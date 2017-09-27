<%-- 
    Document   : addcategory
    Created on : 10 May, 2016, 2:02:34 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Update Category</title>


    </head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Category</title>


</head>
<body>
    <!-- Header Starts -->
    <%@include file="admin_header.jsp" %>
    <!-- Header Ends -->
    <div align="center" class="bg">

        <table border="0" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td>
                    <form action="editcategorydata.jsp" method="post" class="formdata">
                        
                        <table>
                            <tr>
                                <td><u>Update Category</u></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Category Code<br>
                                        <input type="text" name="catcode"/>
                                    </p>
                                    <p align='center'>
                                        <input type="submit" value="Update" class="submit_btn">
                                        <input type="reset" value="reset" class="submit_btn">
                                    </p>
                                </td>
                                <td align="right">
                                    <img src="imgs/update.jpg" width="60" title="update category">
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
