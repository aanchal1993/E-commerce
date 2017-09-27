<%-- 
    Document   : showmerchantdata
    Created on : 12 May, 2016, 1:38:17 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.merchant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Merchant Data</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->

        <!-- Content Starts -->
 <div align="center" class="bg">
        
        <table width="600"  cellspacing="2" cellpadding="2" align="center" class="main_content_table">

            <tr>
                <td><u>Merchant Detail</u></td>
            </tr>

            <tr>
                <td align="center">
                    <%                        String m_id;
                        m_id = request.getParameter("m_id");

                        merchant x = new merchant();
                        x.setM_id(m_id);
                        boolean b = x.search();
                        if (b == false)
                            out.println("No record found");
                        else {

                            String m_name, m_username, m_password, m_email, m_number, m_address, m_pincode;
                            
                            m_name = x.getM_name();
                            m_username = x.getM_username();
                            m_password = x.getM_password();
                            m_email = x.getM_email();
                            m_number = x.getM_number();
                            m_address = x.getM_address();
                             m_pincode = x.getM_pincode();
                            
                            
                    %>  

                    <table border="0" width="450px" >
                       
                           
                        <tr>
                            <td>Id:</td>
                             <td><%=m_id%></td>

                        </tr>
                        <tr>
                            <td>Name:</td>
                            <td><%=m_name%></td>

                        </tr>
                        <tr>
                            <td>User Name:</td>
                            <td><%=m_username%></td>

                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><%=m_password%></td>

                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><%=m_email%></td>

                        </tr>
                        <tr>
                            <td>Contact Number:</td>
                            <td><%=m_number%></td>

                        </tr>
                        <tr>
                            <td>Address:</td>
                            <td><%=m_address%></td>

                        </tr>
                        <tr>
                            <td>Pincode:</td>
                            <td><%=m_pincode%></td>

                        </tr>
                    </table>


                    <%
                        }
                    %>

                </td>
            </tr>
        </table>

</div>
    </body>
</html>
