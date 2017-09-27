<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Search Category</title>

    </head>

    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table width="300" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr>

                    <td>
                        <form action="showcategorydata.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Search Category</u></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Category Code<br>
                                            <input type="text" name="catcode" />
                                        </p>
                                        <p>
                                            <input type="submit" value="Search" class='submit_btn'>
                                             <input type="reset" value="Redet" class='submit_btn'>
                                        </p>
                                    </td>
                                    
                                    <td align="right" >
                                        <img src="imgs/searchCategory.jpg" width="60">
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
