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

/**
 *
 * @author DELL LAPTOP
 */
public class order_details {

    private String order_detail_id, orderid, p_id, p_name, p_price, r_quantity, totalamt, order_detail_status,tracking_no;

    public String getTracking_no() {
        return tracking_no;
    }

    public void setTracking_no(String tracking_no) {
        this.tracking_no = tracking_no;
    }

    public String getOrder_detail_status() {
        return order_detail_status;
    }

    public void setOrder_detail_status(String order_detail_status) {
        this.order_detail_status = order_detail_status;
    }


    public String getTotalamt() {
        return totalamt;
    }

    public void setTotalamt(String totalamt) {
        this.totalamt = totalamt;
    }

    public String getOrder_detail_id() {
        return order_detail_id;
    }

    public void setOrder_detail_id(String order_detail_id) {
        this.order_detail_id = order_detail_id;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
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

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getR_quantity() {
        return r_quantity;
    }

    public void setR_quantity(String r_quantity) {
        this.r_quantity = r_quantity;
    }

    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "insert into order_details(order_detail_id, orderid,p_id, p_name, p_price, r_quantity, totalamt, tracking_no) values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        
        ps.setString(1, "0");
        ps.setString(2, orderid);
        ps.setString(3, p_id);
        ps.setString(4, p_name);
        ps.setString(5, p_price);
        ps.setString(6, r_quantity);
        ps.setString(7, totalamt);
        ps.setString(8, tracking_no);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int submit() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "update order_details set order_detail_status='approved' where order_detail_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, order_detail_id);

        int count = ps.executeUpdate();
        con.close();
        return count;
    }

    public int reject() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "update order_details set order_detail_status='rejected' where order_detail_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, order_detail_id);

        int count = ps.executeUpdate();
        con.close();
        return count;
    }
    public int track() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");

        String SQL = "select * from order_details where order_detail_id=?";;
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, order_detail_id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            tracking_no = rs.getString("tracking_no");
        }

        int count = ps.executeUpdate();
        con.close();
        return count;
    }
    
}
