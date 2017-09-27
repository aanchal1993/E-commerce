package projbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class subcategory {

    private String catcode;
    private String subcatcode;
    private String subcatname;

    public String getCatcode() {
        return catcode;
    }

    public void setCatcode(String catcode) {
        this.catcode = catcode;
    }

    public String getSubcatcode() {
        return subcatcode;
    }

    public void setSubcatcode(String subcatcode) {
        this.subcatcode = subcatcode;
    }

    public String getSubcatname() {
        return subcatname;
    }

    public void setSubcatname(String subcatname) {
        this.subcatname = subcatname;
    }


    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "insert into subcategory(catcode, subcatcode, subcatname) values(?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, catcode);
        ps.setString(2, subcatcode);
        ps.setString(3, subcatname);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int delete() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "delete from subcategory where subcatcode=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, subcatcode);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int modify() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "update subcategory set catcode=?, subcatname=? where subcatcode=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, catcode);
        ps.setString(2, subcatname);
        ps.setString(3, subcatcode);

        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public boolean search() throws Exception {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select * from subcategory where subcatcode=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, subcatcode);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            flag = true;
            catcode = rs.getString("catcode");
            subcatcode = rs.getString("subcatcode");
            subcatname = rs.getString("subcatname");
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

        String SQL = "select * from subcategory order by catcode";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            subcategory q = new subcategory();
            q.catcode = rs.getString("catcode");
            q.subcatcode = rs.getString("subcatcode");
            q.subcatname = rs.getString("subcatname");
            a.add(q);
        }

        con.close();
        return a;
    }
    
    public ArrayList sideMenu(String x) throws Exception {
        catcode=x;
        ArrayList a = new ArrayList();

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select * from subcategory where catcode=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, catcode);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            subcategory q = new subcategory();
            q.subcatcode = rs.getString("subcatcode");
            q.subcatname = rs.getString("subcatname");
            a.add(q);
        }

        con.close();
        return a;
    }

}
