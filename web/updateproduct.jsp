<%-- 
    Document   : updateproduct
    Created on : 12 May, 2016, 11:01:01 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
        <link href="products.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div align="center" class="bg">
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
         

    <table  cellspacing="2" cellpadding="2" align="center" class="main_content_table">
        <tr>

            <td>
                <form action="editproductdata.jsp" method="post">
                    <table>
                        <tr>
                            <td><u>Update Product</u></td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                Product Id:<br>
                                <input type="text" name="p_id" />
                            </p>
                             <p>
                                <input type="submit" value="Update" class="submit_btn">
                                <input type="reset" value="Reset" class="submit_btn"> 
                                </p>
                            </td>
                            <td align="right" >
                                        <img src="imgs/ModifyMerchant.png" width="60" title="Update Merchant">
                            </td>
                        </tr>
                    </table>
                </form>


            </td>
        </tr>
    </table>

    <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
         </div>
</body>
</html>
