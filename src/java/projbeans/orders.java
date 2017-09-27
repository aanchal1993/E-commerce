/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projbeans;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author DELL LAPTOP
 */
public class orders {

    private String orderid, userid, name, address, contact, tax, discount, sum, status, paymode, paydetails,date_of_purchase;

    public String getSum() {
        return sum;
    }

    public String getDate_of_purchase() {
        return date_of_purchase;
    }

    public void setDate_of_purchase(String date_of_purchase) {
        this.date_of_purchase = date_of_purchase;
    }

    public void setSum(String sum) {
        this.sum = sum;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getTax() {
        return tax;
    }

    public void setTax(String tax) {
        this.tax = tax;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPaymode() {
        return paymode;
    }

    public void setPaymode(String paymode) {
        this.paymode = paymode;
    }

    public String getPaydetails() {
        return paydetails;
    }

    public void setPaydetails(String paydetails) {
        this.paydetails = paydetails;
    }

    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        //orderid, userid, name, address, contact, tax, discount, sum, status, paymode, paydetails;
        String SQL = "insert into orders values(?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, "0");
        ps.setString(2, userid);
        ps.setString(3, name);
        ps.setString(4, address);
        ps.setString(5, contact);
        ps.setString(6, tax);
        ps.setString(7, discount);
        ps.setString(8, sum);
        ps.setString(9, status);
        ps.setString(10, paymode);
        ps.setString(11, paydetails);
        long d=System.currentTimeMillis();
        SimpleDateFormat df = new SimpleDateFormat("MMM dd,yyyy HH:mm");    
        Date resultdate = new Date(d);
        String PurchaseDate = df.format(resultdate);
        ps.setString(12, PurchaseDate);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public String top() throws Exception {
       // ArrayList a = new ArrayList();
        String a="";

        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        //orderid, userid, name, address, contact, tax, discount, totalamt, status, paymode, paydetails;
        String SQL = "SELECT orderid FROM orders where ROWNUM <=1 order by orderid desc";

        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            orders q = new orders();
            q.orderid = rs.getString("orderid"); 
            a=q.orderid;
        }
        con.close();
        return a;
    }

}
