package projbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class merchant {

    private String m_id;
    private String m_name;
    private String m_username;
    private String m_password;
    private String m_email;

    public String getOrder_detail_status() {
        return order_detail_status;
    }

    public void setOrder_detail_status(String order_detail_status) {
        this.order_detail_status = order_detail_status;
    }
    private String m_number;
    private String m_address;
    private String m_pincode, order_detail_status;

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getOrder_detail_id() {
        return order_detail_id;
    }

    public void setOrder_detail_id(String order_detail_id) {
        this.order_detail_id = order_detail_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }
    private String p_id, orderid, order_detail_id, p_name;

    public String getM_id() {
        return m_id;
    }

    public void setM_id(String m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getM_username() {
        return m_username;
    }

    public void setM_username(String m_username) {
        this.m_username = m_username;
    }

    public String getM_password() {
        return m_password;
    }

    public void setM_password(String m_password) {
        this.m_password = m_password;
    }

    public String getM_email() {
        return m_email;
    }

    public void setM_email(String m_email) {
        this.m_email = m_email;
    }

    public String getM_number() {
        return m_number;
    }

    public void setM_number(String m_number) {
        this.m_number = m_number;
    }

    public String getM_address() {
        return m_address;
    }

    public void setM_address(String m_address) {
        this.m_address = m_address;
    }

    public String getM_pincode() {
        return m_pincode;
    }

    public void setM_pincode(String m_pincode) {
        this.m_pincode = m_pincode;
    }

    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "insert into merchant values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, "0");
        ps.setString(2, m_name);
        ps.setString(3, m_username);
        ps.setString(4, m_password);
        ps.setString(5, m_email);
        ps.setString(6, m_number);
        ps.setString(7, m_address);
        ps.setString(8, m_pincode);

        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int delete() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "delete from merchant where m_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, m_id);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int modify() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "update merchant set m_name=?, m_username=?, m_password=?, m_email=?, m_number=?, m_address=?, m_pincode=? where m_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);

        ps.setString(1, m_name);
        ps.setString(2, m_username);
        ps.setString(3, m_password);
        ps.setString(4, m_email);
        ps.setString(5, m_number);
        ps.setString(6, m_address);
        ps.setString(7, m_pincode);
        ps.setString(8, m_id);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public boolean search() throws Exception {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select * from merchant where m_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, m_id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            flag = true;
            m_name = rs.getString("m_name");
            m_username = rs.getString("m_username");
            m_password = rs.getString("m_password");
            m_email = rs.getString("m_email");
            m_number = rs.getString("m_number");
            m_address = rs.getString("m_address");
            m_pincode = rs.getString("m_pincode");
            // m_id=rs.getString("bcode");
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

        String SQL = "select * from merchant order by m_id";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            merchant q = new merchant();
            q.m_id = rs.getString("m_id");
            q.m_name = rs.getString("m_name");
            q.m_username = rs.getString("m_username");
            q.m_password = rs.getString("m_password");
            q.m_email = rs.getString("m_email");
            q.m_number = rs.getString("m_number");
            q.m_address = rs.getString("m_address");
            q.m_pincode = rs.getString("m_pincode");
            a.add(q);
        }

        con.close();
        return a;
    }

    public ArrayList myOrders() throws Exception {
        String p_id = "", orderid = "", order_detail_id = "", order_detail_status = "";
        ArrayList a = new ArrayList();

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select *  from products p inner join merchant m  on p.m_id = m.m_id inner join order_details o on o.p_id=p.p_id where m.m_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, m_id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            merchant o = new merchant();
            o.p_id = rs.getString("p_id");
            o.orderid = rs.getString("orderid");
            o.order_detail_id = rs.getString("order_detail_id");
            o.m_id = rs.getString("m_id");
            o.p_name = rs.getString("p_name");
            o.order_detail_status = rs.getString("order_detail_status");

            a.add(o);
        }

        con.close();
        return a;
    }

}
