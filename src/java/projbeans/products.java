package projbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class products {

    private String p_id;
    private String subcatcode;
    private String m_id;
    private String bcode;
    private String p_name;
    private String p_price;
    private String p_description;
    private String p_status;
    private String p_image;
    private String p_image1;
    private String p_quantity;

    public String getP_quantity() {
        return p_quantity;
    }

    public void setP_quantity(String p_quantity) {
        this.p_quantity = p_quantity;
    }

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getSubcatcode() {
        return subcatcode;
    }

    public void setSubcatcode(String subcatcode) {
        this.subcatcode = subcatcode;
    }

    public String getM_id() {
        return m_id;
    }

    public void setM_id(String m_id) {
        this.m_id = m_id;
    }

    public String getBcode() {
        return bcode;
    }

    public void setBcode(String bcode) {
        this.bcode = bcode;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getP_description() {
        return p_description;
    }

    public void setP_description(String p_description) {
        this.p_description = p_description;
    }

    public String getP_status() {
        return p_status;
    }

    public void setP_status(String p_status) {
        this.p_status = p_status;
    }

    public String getP_image() {
        return p_image;
    }

    public void setP_image(String p_image) {
        this.p_image = p_image;
    }

    public String getP_image1() {
        return p_image1;
    }

    public void setP_image1(String p_image1) {
        this.p_image1 = p_image1;
    }

    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL = "select p_id  from products order by to_number(p_id) desc";
        PreparedStatement ps1 = con.prepareStatement(SQL);
      
        ResultSet rs = ps1.executeQuery();
        int newid=1;
        if (rs.next()) {
        newid=rs.getInt("p_id")+1;
                
        }
        
        SQL = "insert into products values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setInt(1, newid);
        ps.setString(2, subcatcode);
        ps.setString(3, m_id);
        ps.setString(4, bcode);
        ps.setString(5, p_name);
        ps.setString(6, p_price);
        ps.setString(7, p_description);
        ps.setString(8, p_status);
        ps.setString(9, p_image);
        ps.setString(10, p_image1);
        ps.setString(11, p_quantity);

        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int delete() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "delete from products where p_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, p_id);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int modify(int chk) throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;
        int count = -1;
        //no modification in image part
        if (chk == 0) {

            String SQL = "update products set subcatcode=?, m_id=?, bcode=?, p_name=?, p_price=?, p_description=?, p_status=?,p_quantity=? where p_id=?";

            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, subcatcode);
            ps.setString(2, m_id);
            ps.setString(3, bcode);
            ps.setString(4, p_name);
            ps.setString(5, p_price);
            ps.setString(6, p_description);
            ps.setString(7, p_status);
            ps.setString(8, p_quantity);
            ps.setString(9, p_id);
            count = ps.executeUpdate();
        } //modification in image
        else if (chk == 1) {
            String SQL = "update products set subcatcode=?, m_id=?, bcode=?, p_name=?, p_price=?, p_description=?, p_status=?,p_quantity=?,p_image=? where p_id=?";

            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, subcatcode);
            ps.setString(2, m_id);
            ps.setString(3, bcode);
            ps.setString(4, p_name);
            ps.setString(5, p_price);
            ps.setString(6, p_description);
            ps.setString(7, p_status);
            ps.setString(8, p_quantity);
            ps.setString(9, p_image);
            ps.setString(10, p_id);
            System.out.println("chk" + chk);
            count = ps.executeUpdate();
            System.out.println("count" + count);

        } //modification in image1
        else if (chk == 2) {
            String SQL = "update products set subcatcode=?, m_id=?, bcode=?, p_name=?, p_price=?, p_description=?, p_status=?,p_quantity=?,p_image1=? where p_id=?";

            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, subcatcode);
            ps.setString(2, m_id);
            ps.setString(3, bcode);
            ps.setString(4, p_name);
            ps.setString(5, p_price);
            ps.setString(6, p_description);
            ps.setString(7, p_status);
            ps.setString(8, p_quantity);
            ps.setString(9, p_image1);
            ps.setString(10, p_id);
            count = ps.executeUpdate();
        } //both the images are updated
        else if (chk == 3) {
            String SQL = "update products set subcatcode=?, m_id=?, bcode=?, p_name=?, p_price=?, p_description=?, p_status=?,p_quantity=?,p_image=?,p_image1=? where p_id=?";

            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, subcatcode);
            ps.setString(2, m_id);
            ps.setString(3, bcode);
            ps.setString(4, p_name);
            ps.setString(5, p_price);
            ps.setString(6, p_description);
            ps.setString(7, p_status);
            ps.setString(8, p_quantity);
            ps.setString(9, p_image);
            ps.setString(10, p_image1);
            ps.setString(11, p_id);
            count = ps.executeUpdate();

        }
                //

        con.close();
        return count;
    }

    public boolean search() throws Exception {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;

        String SQL = "select * from products where p_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, p_id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            flag = true;
            subcatcode = rs.getString("subcatcode");
            m_id = rs.getString("m_id");
            bcode = rs.getString("bcode");
            p_name = rs.getString("p_name");
            p_price = rs.getString("p_price");
            p_description = rs.getString("p_description");
            p_status = rs.getString("p_status");
            p_image = rs.getString("p_image");
            p_image1 = rs.getString("p_image1");
            p_quantity = rs.getString("p_quantity");
        } else {
            flag = false;
        }

        con.close();
        return flag;
    }

    public ArrayList showAll() throws Exception {
        ArrayList a = new ArrayList();

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;
        String SQL = "select * from products order by to_number(p_id) desc";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            products q = new products();
            q.p_id = rs.getString("p_id");
            q.subcatcode = rs.getString("subcatcode");
            q.m_id = rs.getString("m_id");
            q.bcode = rs.getString("bcode");
            q.p_name = rs.getString("p_name");
            q.p_price = rs.getString("p_price");
            q.p_description = rs.getString("p_description");
            q.p_status = rs.getString("p_status");
            q.p_image = rs.getString("p_image");
            q.p_image1 = rs.getString("p_image1");
            q.p_quantity = rs.getString("p_quantity");
            a.add(q);
        }

        con.close();
        return a;
    }

    public ArrayList displayProducts(String s) throws Exception {
        ArrayList a = new ArrayList();
        subcatcode = s;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;
        String SQL = "select * from products where subcatcode=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, subcatcode);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            products q = new products();
            q.p_id = rs.getString("p_id");
            q.subcatcode = rs.getString("subcatcode");
            q.m_id = rs.getString("m_id");
            q.bcode = rs.getString("bcode");
            q.p_name = rs.getString("p_name");
            q.p_price = rs.getString("p_price");
            q.p_description = rs.getString("p_description");
            q.p_status = rs.getString("p_status");
            q.p_image = rs.getString("p_image");
            q.p_image1 = rs.getString("p_image1");
            q.p_quantity = rs.getString("p_quantity");
            a.add(q);
        }

        con.close();
        return a;
    }

    public ArrayList displayProduct(String s) throws Exception {
        ArrayList a = new ArrayList();
        p_id = s;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;
        String SQL = "select * from products where p_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, p_id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            products q = new products();
            q.p_id = rs.getString("p_id");
            q.subcatcode = rs.getString("subcatcode");
            q.m_id = rs.getString("m_id");
            q.bcode = rs.getString("bcode");
            q.p_name = rs.getString("p_name");
            q.p_price = rs.getString("p_price");
            q.p_description = rs.getString("p_description");
            q.p_status = rs.getString("p_status");
            q.p_image = rs.getString("p_image");
            q.p_image1 = rs.getString("p_image1");
            q.p_quantity = rs.getString("p_quantity");
            a.add(q);
        }

        con.close();
        return a;
    }

    public ArrayList showMyProducts() throws Exception {
        ArrayList a = new ArrayList();

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;
        String SQL = "select * from products where m_id=? order by p_id asc";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, m_id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            products q = new products();
            q.p_id = rs.getString("p_id");
            q.subcatcode = rs.getString("subcatcode");
            q.m_id = rs.getString("m_id");
            q.bcode = rs.getString("bcode");
            q.p_name = rs.getString("p_name");
            q.p_price = rs.getString("p_price");
            q.p_description = rs.getString("p_description");
            q.p_status = rs.getString("p_status");
            q.p_image = rs.getString("p_image");
            q.p_image1 = rs.getString("p_image1");
            q.p_quantity = rs.getString("p_quantity");
            a.add(q);
        }

        con.close();
        return a;
    }

    
    public ArrayList search_btn(String x) throws Exception {
        ArrayList a = new ArrayList();

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
//p_id,subcatcode,m_id,bcode,p_name,p_price,p_description,p_status,p_image,p_image1,p_quantity;

        String SQL = "select * from products where lower(p_name) like '%"+x+"%'";
        PreparedStatement ps = con.prepareStatement(SQL);
        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            products q = new products();
            q.p_name = rs.getString("p_name");
            q.p_price = rs.getString("p_price");
            q.p_description = rs.getString("p_description");
            q.p_id=rs.getString("p_id");
            q.p_image = rs.getString("p_image");
          a.add(q);
        }

        con.close();
        return a;
    }

}
