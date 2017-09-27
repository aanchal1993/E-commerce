

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.cartDetailBean"%>
<%@page import="projbeans.products"%>
<%
    String p_id, p_name, p_price, p_image, r_quantity;
    r_quantity = request.getParameter("r_quantity");
    p_id = request.getParameter("p_id");
    p_name = request.getParameter("p_name");
    p_price = request.getParameter("p_price");
        
        /*
             p_id = (String) session.getAttribute("pqr");
             products a = new products();
             ArrayList ary = a.displayProduct(p_id);
             System.out.println(p_id);
             Iterator k = ary.iterator();
             while (k.hasNext()) {
             products w = (products) k.next();
             p_price = a.getP_price();
             p_name = a.getP_name();
             p_image = a.getP_image();
        */
             int l = Integer.parseInt(r_quantity);
             int l1 = Integer.parseInt(p_price);
             int x = l * l1;
             String total = String.valueOf(x);

             cartDetailBean cartbean = new cartDetailBean();
             cartbean.setP_id(p_id);
             cartbean.setP_name(p_name);
             cartbean.setP_price(p_price);
             cartbean.setR_quantity(r_quantity);
             cartbean.setTotalamt(total);
             ArrayList cartlist = (ArrayList) session.getAttribute("cart");

             if (cartlist == null) {
             cartlist = new ArrayList();
             cartlist.add(cartbean);
             } else {
             cartlist.add(cartbean);
             }
             session.setAttribute("cart", cartlist);

             response.sendRedirect("showcart.jsp");

             
    
%>