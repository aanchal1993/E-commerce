<%@page import="projbeans.feedback"%>
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
            String name,userid, suggestion, email, contact, rating, feedbackid;
            //String order_detail_id, p_id = "", p_name = "", p_price = "", r_quantity = "", totalamt = "", tracking_no;

            name = request.getParameter("name");
            userid = request.getParameter("userid");
            suggestion = request.getParameter("suggestion");
            email = request.getParameter("email");
            contact = request.getParameter("contact");
            rating = request.getParameter("rating");
            
            
            feedback f = new feedback();
            f.setUserid(userid);
            f.setName(name);
            f.setSuggestion(suggestion);
            f.setEmail(email);
            f.setContact(contact);
            f.setRating(rating);
            int x=f.save();
            response.sendRedirect("ThankFeedback.jsp");
        %> 
    </body>
</html>
