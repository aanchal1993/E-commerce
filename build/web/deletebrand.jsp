<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Brand</title>

        <link href="admin.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
   <div align="center" class="bg">
    <table  cellspacing="2" cellpadding="2" align="center" class="main_content_table">
        <tr>

                <td>
                    <form action="deletebranddata.jsp" method="post">
                        <table>
                            <tr>
                                <td><u>Delete Brand</u></td>
                            </tr>
                            <tr>
                                    <td>
                                <p>
                                    Brand Cod:<br>
                                    <input type="text" name="bcode" />
                                </p>
                                <p>
                                    <input type="submit" value="Search" class='submit_btn'>
                                    <input type="reset" value="Redet" class='submit_btn'>
                                </p>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td align="right" >
                                    <img src="imgs/delbrand.jpg" width="60" title="Delete Brand">
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
