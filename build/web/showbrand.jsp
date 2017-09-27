<%-- 
    Document   : showbrand
    Created on : 11 May, 2016, 8:42:15 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="projbeans.brand"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
        <title>All Brands</title>
        
        
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>
                <td><u>Brand List</u></td>
            </tr>
            <tr>

                <td align="center">
                    <%
                        brand t = new brand();
                        ArrayList a = t.showAll();
                        if (a.size() == 0)
                            out.println("No data found");
                        else {
                    %>
                    <table border="0" width="400px">
                        <tr>
                            <th align="left">Code</th>
                            <th align="left">Name</th>
                        </tr>
                        <%
                            String bcode, bname;
                            Iterator k = a.iterator();
                            while (k.hasNext()) {
                                brand w = (brand) k.next();
                                bcode = w.getBcode();
                                bname = w.getBname();
                        %>
                        <tr>
                            <td><%=bcode%></td>
                            <td><a href="showbranddata.jsp?bcode=<%=bcode%>"><%=bname%></a></td>
                            <td><a href="editbranddata.jsp?bcode=<%=bcode%>"><img src="imgs/edit.png" title="edit"></a>
                                <a href="deletebranddata.jsp?bcode=<%=bcode%>"><img src="imgs/cross.jpg" title="delte"></a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                    <%
                        }
                    %>   

                </td>
            </tr></table>
        </div>
                    <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
    </body>
</html>
