<%-- 
    Document   : showmerchant
    Created on : 12 May, 2016, 12:54:08 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.merchant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Merchant List</title>
        </head>
    <body>
     <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>
                <td><u>Merchant's List</u></td>
            </tr>
            <tr>

                <td align="center">
                    <%
                        merchant t = new merchant();
                        ArrayList a = t.showAll();
                        if (a.size() == 0)
                            out.println("No data found");
                        else {
                    %>
                    <table >
                        <tr>
                            <th align="left">Id</th>
                            <th align="left">Name</th>
                            <th align="left">UserName&nbsp;&nbsp;</th>
                            <th align="left">Default Password &nbsp;&nbsp;</th>
                            <th align="left">Email</th>
                            <th align="left">Contact No.&nbsp;&nbsp;</th>
                            <th align="left">Address &nbsp;&nbsp;</th>
                            <th align="left">Pincode</th>
                        </tr>
                        <%
                             String m_id, m_name, m_username, m_password, m_email, m_number, m_address, m_pincode;
                            Iterator k = a.iterator();
                            while (k.hasNext()) {
                                merchant w = (merchant) k.next();
                                m_id = w.getM_id();
                                m_name = w.getM_name();
                                m_username = w.getM_username();
                                m_password = w.getM_password();
                                m_email = w.getM_email();
                                m_number = w.getM_number();
                                m_address = w.getM_address();
                                m_pincode = w.getM_pincode();
                            
                        %>
                        <tr>
                            <td><%=m_id%></td>
                            <td><%=m_name%></td>
                            <td><a href="showmerchantdata.jsp?m_id=<%=m_id%>"><%=m_username%></a></td>
                            <td><%=m_password%></td>
                            <td><%=m_email%></td>
                            <td><%=m_number%></td>
                            <td><%=m_address%></td>
                            <td><%=m_pincode%></td>
                            
                            
                            
                            <td>&nbsp;&nbsp;<a href="editmerchantdata.jsp?m_id=<%=m_id%>"><img src="imgs/edit.png" title="edit"></a>
                                <a href="deletemerchantdata.jsp?m_id=<%=m_id%>"><img src="imgs/cross.jpg" title="edit"></a>
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
