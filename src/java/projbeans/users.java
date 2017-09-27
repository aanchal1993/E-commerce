/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DELL LAPTOP
 */
public class users {

    private String userid;
    private String name;
    private String username;
    private String password;
    private String email;
    private String address;
    private String gender;
    private String unumber;
    
    private String orderid,order_detail_id,p_id,p_name,order_detail_status,date_of_purchase;

    public String getOrderid() {
        return orderid;
    }

    public String getDate_of_purchase() {
        return date_of_purchase;
    }

    public void setDate_of_purchase(String date_of_purchase) {
        this.date_of_purchase = date_of_purchase;
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

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getOrder_detail_status() {
        return order_detail_status;
    }

    public void setOrder_detail_status(String order_detail_status) {
        this.order_detail_status = order_detail_status;
    }
    //userid,name,username,password,email,address,gender,unumber orderid = "", order_detail_id = "", p_id = "",p_name = "",order_detail_status = "";
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getUnumber() {
        return unumber;
    }

    public void setUnumber(String unumber) {
        this.unumber = unumber;
    }

    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "insert into users(userid,name,username,password,email,address,unumber,gender) values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, "0");
        ps.setString(2, name);
        ps.setString(3, username);
        ps.setString(4, password);
        ps.setString(5, email);
        ps.setString(6, address);
        ps.setString(7, unumber);
        ps.setString(8, gender);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int delete() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "delete from users where userid=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, userid);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int modify() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "update users set name=?,username=?,password=?,email=?,address=?,gender=?,unumber=? where userid,=?";
        PreparedStatement ps = con.prepareStatement(SQL);

        ps.setString(1, name);
        ps.setString(2, username);
        ps.setString(3, password);
        ps.setString(4, address);
        ps.setString(5, email);
        ps.setString(6, unumber);
        ps.setString(7, gender);
        ps.setString(8, userid);

        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public boolean search() throws Exception {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select * from users where userid=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, userid);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            flag = true;
            name = rs.getString("name");
            username = rs.getString("username");
            password = rs.getString("password");
            address = rs.getString("address");
            email = rs.getString("email");
            unumber = rs.getString("unumber");
            gender = rs.getString("gender");

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

        String SQL = "select * from users";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            users q = new users();
            q.userid = rs.getString("userid");
            q.name = rs.getString("name");
            q.username = rs.getString("username");
            q.password = rs.getString("password");
            q.address = rs.getString("address");
            q.email = rs.getString("email");
            q.unumber = rs.getString("unumber");
            q.gender = rs.getString("gender");

            a.add(q);
        }

        con.close();
        return a;
    }

    

    public ArrayList myUserOrders() throws Exception {
        String orderid = "", order_detail_id = "", p_id = "",p_name = "",order_detail_status = "", date_of_purchase ="";
        ArrayList a = new ArrayList();

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select * from orders odr inner join order_details odrd on odr.orderid=odrd.orderid where odr.userid=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1,userid);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            users o = new users();
             o.userid = rs.getString("userid");
            o.orderid = rs.getString("orderid");
            o.order_detail_id = rs.getString("order_detail_id");
            o.p_id = rs.getString("p_id");
            o.p_name = rs.getString("p_name");
            o.order_detail_status = rs.getString("order_detail_status");
            o.date_of_purchase = rs.getString("date_of_purchase");
            a.add(o);
        }

        con.close();
        return a;
    }
    
    
}
