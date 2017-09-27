<%-- 
    Document   : searchsubcategory
    Created on : 11 May, 2016, 11:09:41 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Search Sub-Category</title>
        
    </head>

    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
       <div align="center" class="bg">
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td>
                    <form action="showsubcategorydata.jsp" method="post">
                        <table>
                            <tr>
                                <td><u>Search Sub Category</u></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>SubCategory Code<br>
                                        <input type="text" name="subcatcode" size="30" placeholder="enter sub-category code">
                                    </p>
                                    <p align='center'>
                                        <input type="submit" value="Search" class="submit_btn">
                                        <input type="reset" value="reset" class="submit_btn">
                                    </p>
                                </td>
                                <td align="right">
                                    <img src="imgs/search.jpg" width="60">
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
