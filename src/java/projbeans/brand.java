package projbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class brand {

    private String bcode;
    private String bname;

    public String getBcode() {
        return bcode;
    }

    public void setBcode(String bcode) {
        this.bcode = bcode;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }
  
   
    public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="insert into brand values(?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,"0");
        ps.setString(2,bname);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    public int delete() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="delete from brand where bcode=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,bcode);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    public int modify() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        
        String SQL="update brand set bname=? where bcode=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,bname);
        ps.setString(2,bcode);
        
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
        
        String SQL="select * from brand where bcode=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,bcode);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            bcode=rs.getString("bcode");
            bname=rs.getString("bname");
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
        
        String SQL="select * from brand order by bcode";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            brand q=new brand();
            q.bcode=rs.getString("bcode");
            q.bname=rs.getString("bname");
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
    
    
}
