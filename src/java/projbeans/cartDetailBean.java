/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projbeans;

/**
 *
 * @author DELL LAPTOP
 */
public class cartDetailBean {
    
 
    private String orderid,p_id,p_name,p_price,p_quantity,totalamt,r_quantity;

    public String getOrderid() {
        return orderid;
    }

    public String getR_quantity() {
        return r_quantity;
    }

    public void setR_quantity(String r_quantity) {
        this.r_quantity = r_quantity;
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

    public String getP_quantity() {
        return p_quantity;
    }

    public void setP_quantity(String p_quantity) {
        this.p_quantity = p_quantity;
    }

    public String getTotalamt() {
        return totalamt;
    }

    public void setTotalamt(String totalamt) {
        this.totalamt = totalamt;
    }

    
}

