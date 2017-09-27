<%-- 
    Document   : searchbrand
    Created on : 11 May, 2016, 9:37:13 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Search Brand</title>

    </head>

    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr>

                    <td>
                        <form action="showbranddata.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Search Brand</u></td>
                                </tr>
                                <tr>
                                    <td>
                                <p>
                                    Brand Code:<br>
                                    <input type="text" name="bcode" />
                                </p>
                                <p>
                                    <input type="submit" value="Search" class='submit_btn'>
                                    <input type="reset" value="Redet" class='submit_btn'>
                                </p>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td align="right" >
                                    <img src="imgs/searchBrand.png" width="60" title="Search Brand">
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
