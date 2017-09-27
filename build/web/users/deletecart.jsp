<%@page import="java.util.ArrayList"%>
<%

    String index = request.getParameter("index");
    ArrayList cartdata = (ArrayList) session.getAttribute("cart");
    cartdata.remove(Integer.parseInt(index));
    response.sendRedirect("showcart.jsp");


%>