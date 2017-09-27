<%-- 
    Document   : saveshippment
    Created on : 18 May, 2016, 11:26:14 AM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.card_details"%>
<%@page import="java.util.Iterator"%>
<%@page import="projbeans.order_details"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="projbeans.cartDetailBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String orderid, userid, name, address, contact, tax, discount, sum, status, paymode, paydetails;
                String order_detail_id, p_id = "", p_name = "", p_price = "", r_quantity = "", totalamt = "", tracking_no, card_detail = "";

                int chk = 0;
                /**
                 * ****************************************************************************************
                 */
                paymode = request.getParameter("paymode");
                if (paymode.equals("card")) {
                    card_detail = request.getParameter("card_detail");
                    card_details c = new card_details();
                    c.setNo(card_detail);
                    if (c.validate() == false) {
                        //response.sendRedirect("shippment.jsp"); 
                        out.println("Invalid card_details details");
                        //response.sendRedirect("ERROR.jsp");
                    } else {
                        chk = 1;
                    }
                } else {
                    chk = 2;
                }
                /**
                 * ****************************************************************************************
                 */
                if(chk==1  || chk==2){
                ArrayList cartlist = (ArrayList) session.getAttribute("cart");

                PrintWriter p = response.getWriter();
                HttpSession q = request.getSession(true);
                userid = (String) q.getAttribute("userid");
                //System.out.println("USER IDDD: "+userid);

                name = request.getParameter("name");
                address = request.getParameter("address");
                contact = request.getParameter("contact");

                for (int i = 0; i < cartlist.size(); i++) {
                    cartDetailBean cdb = (cartDetailBean) cartlist.get(i);
                    p_id = cdb.getP_id();
                    p_name = cdb.getP_name();
                    p_price = cdb.getP_price();
                    r_quantity = cdb.getR_quantity();
                    totalamt = cdb.getTotalamt();
                }

                ArrayList cartdata = (ArrayList) session.getAttribute("cart");
                Iterator x11 = cartdata.iterator();
                int sum_int = 0;
                for (int i = 0; i < cartdata.size(); i++) {
                    cartDetailBean cartlist_sum = (cartDetailBean) x11.next();
                    sum_int += Integer.parseInt(cartlist_sum.getTotalamt());
                }
                sum = String.valueOf(sum_int);
                int tax1 = Integer.parseInt(sum);
                float l = 0.05f;
                int x = (int) (tax1 * l);
                tax = String.valueOf(x);

                discount = request.getParameter("discount");

                status = "pending";

                paydetails = request.getParameter("paydetails");

                //Orders Table
                orders odr = new orders();
                odr.setUserid(userid);
                odr.setName(name);
                odr.setAddress(address);
                odr.setAddress(address);
                odr.setContact(contact);
                odr.setTax(tax);
                odr.setDiscount(discount);
                odr.setSum(sum);
                odr.setStatus(status);
                odr.setPaymode(paymode);
                odr.setPaydetails(paydetails);
                odr.save();
            //out.println("Data Saved in orders");

                //order_detail_id, orderid, p_id, p_name, p_price, r_quantity, totalamt,tracking_no;
                orderid = odr.top();
                System.out.println("ORDER IDDDD:" + orderid);

                long myLong = System.currentTimeMillis();
                tracking_no = Long.toString(myLong);

                for (int i = 0; i < cartlist.size(); i++) {
                    cartDetailBean cdb = (cartDetailBean) cartlist.get(i);
                    p_id = cdb.getP_id();
                    p_name = cdb.getP_name();
                    p_price = cdb.getP_price();
                    r_quantity = cdb.getR_quantity();
                    totalamt = cdb.getTotalamt();

                    order_details odr_dtl = new order_details();
                    odr_dtl.setOrderid(orderid);
                    odr_dtl.setP_id(p_id);
                    odr_dtl.setP_name(p_name);
                    odr_dtl.setP_price(p_price);
                    odr_dtl.setR_quantity(r_quantity);
                    odr_dtl.setTotalamt(totalamt);
                    odr_dtl.setTracking_no(tracking_no);
                    odr_dtl.save();

                }
                response.sendRedirect("ThankShippment.jsp");

            }
        %> 
    </body>
</html>
