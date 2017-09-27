<%-- 
    Document   : updatebrand
    Created on : 11 May, 2016, 9:31:20 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Update Brand</title>


    </head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Brand</title>

    <!-- Header Starts -->
    <%@include file="admin_header.jsp" %>
    <!-- Header Ends -->

</head>
<body>
    <div align="center" class="bg">
        <table width="300" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td>
                    <form action="editbranddata.jsp" method="post">
                        <table>
                            <tr>
                                <td><u>Update Brand</u></td>
                            </tr>

                            <tr>
                                <td>
                                    <p>
                                        Brand Code<br>
                                        <input type="text" name="bcode" />
                                    </p>
                                    <p align='center'>
                                        <input type="submit" value="Update" class="submit_btn">
                                        <input type="reset" value="reset" class="submit_btn">
                                    </p>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td align="right">
                                    <img src="imgs/update.jpg" width="60" title="update brand">
                                </td>
                            </tr>
                        </table>
                    </form>


                </td>
            </tr>
        </table>
    </div>
    <!-- Footer Starts -->
    <%@include file="footer.jsp" %>
    <!-- Footer Ends -->
</body>
</html>
