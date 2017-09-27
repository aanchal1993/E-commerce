<%@page import="projbeans.brand"%>
<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Brand</title>

    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->

        <!-- Content Starts -->
        <div align="center" class="bg">
            <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">

                <tr>
                    <td><u>Brand Detail</u></td>
                </tr>

                <tr>
                    <td align="center">
                        <%                        String bcode;
                            bcode = request.getParameter("bcode");

                            brand x = new brand();
                            x.setBcode(bcode);
                            boolean b = x.search();
                            if (b == false)
                                out.println("No record found");
                            else {

                                String bname;
                                bname = x.getBname();
                        %>  

                        <table border="0" width="450px">
                            <tr>
                                <td align="left">Code</td>
                                <td><%=bcode%></td>

                            </tr>
                            <tr>
                                <td>Name</td>
                                <td><%=bname%></td>

                            </tr>
                        </table>


                        <%
                            }
                        %>

                    </td>
                </tr>
            </table>

        </div>
        <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->

    </body>
</html>
