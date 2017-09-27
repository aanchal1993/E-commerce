<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="products.css" rel="stylesheet" type="text/css">

        <title>Delete Product</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table  cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr>

                    <td>
                        <form action="deleteproductdata.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Delete Product</u></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Product Id:<br>
                                            <input type="text" name="p_id" placeholder="enter product code" class="required">
                                        </p>
                                        <p>
                                            <input type="submit" value="Delete" class='submit_btn'>
                                    <input type="reset" value="reset" class='submit_btn'>
                                    </p>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td align="right">
                                        <img src="imgs/deleteCategory.jpg" width="60">
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