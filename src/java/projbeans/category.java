package projbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class category {

    private String catcode;
    private String catname;

    public String getCatcode() {
        return catcode;
    }

    public void setCatcode(String catcode) {
        this.catcode = catcode;
    }

    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname;
    }

    
   
    public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="insert into category values(?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,"0");
        ps.setString(2,catname);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    public int delete() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="delete from category where catcode=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,catcode);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    public int modify() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="update category set catname=? where catcode=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,catname);
        ps.setString(2,catcode);
        
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    public boolean search() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="select * from category where catcode=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,catcode);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            catcode=rs.getString("catcode");
            catname=rs.getString("catname");
        }
        else
            flag=false;
        
        con.close();
        return flag;
    }
    
    public ArrayList showAll() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="select * from category order by catcode";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            category q=new category();
            q.catcode=rs.getString("catcode");
            q.catname=rs.getString("catname");
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
        public ArrayList sideMenu() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="select * from category";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            category q=new category();
            q.catcode=rs.getString("catcode");
            q.catname=rs.getString("catname");
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
    
    
}
