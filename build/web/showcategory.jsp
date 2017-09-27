<%-- 
    Document   : showcategory
    Created on : 10 May, 2016, 2:03:03 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="projbeans.category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>All Categories</title>
        
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
         <div align="center" class="bg">
        <table border="0" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>
                <td><u>Category List</u></td>
            </tr>
            <tr>

                <td align="center">
                    <%
                        category t = new category();
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
                            String catcode, catname;
                            Iterator k = a.iterator();
                            while (k.hasNext()) {
                                category w = (category) k.next();
                                catcode = w.getCatcode();
                                catname = w.getCatname();
                        %>
                        <tr>
                            <td><%=catcode%></td>
                            <td><a href="showcategorydata.jsp?catcode=<%=catcode%>"><%=catname%></a></td>
                            <td><a href="editcategorydata.jsp?catcode=<%=catcode%>"><img src="imgs/edit.png" title="edit"></a>
                                <a href="deletecategorydata.jsp?catcode=<%=catcode%>"><img src="imgs/cross.jpg" title="delete"></a>
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
