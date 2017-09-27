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
public class feedback {
 private String  name,  userid, suggestion, email, contact, rating,feedbackid;

    public String getName() {
        return name;
    }

    public String getFeedbackid() {
        return feedbackid;
    }

    public void setFeedbackid(String feedbackid) {
        this.feedbackid = feedbackid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
 
    
    public int save() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        String SQL = "select feedbackid  from feedback order by to_number(feedbackid) desc";
        PreparedStatement ps1 = con.prepareStatement(SQL);
      
        ResultSet rs = ps1.executeQuery();
        int newid=1;
        if (rs.next()) {
        newid=rs.getInt("feedbackid")+1;    
        }
        SQL = "insert into feedback(feedbackid, name, userid, suggestion, email, contact, rating) values(?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setInt(1, newid);
        ps.setString(2, name);
        ps.setString(3, userid);
        ps.setString(4, suggestion);
        ps.setString(5, email);
        ps.setString(6, contact);
        ps.setString(7, rating);
        int count = ps.executeUpdate();
        con.close();
        return count;
    }

}
