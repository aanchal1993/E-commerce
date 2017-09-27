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

public class card_details {

    private String id, no;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public boolean validate() throws Exception {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection(str, "shopping", "123456");
        boolean flag;
        String SQL = "select * from credit_card where no=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setString(1, no);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            flag = true;
        } else {
            flag = false;
        }
        con.close();
        return flag;
    }
}
