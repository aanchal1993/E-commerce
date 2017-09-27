<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="products.css" rel="stylesheet" type="text/css">
       
        <title>Search Product</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
       <div align="center" class="bg">
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td>
                    <form action="showproductdata.jsp" method="post">
                        <table>
                            <tr>
                                <td><u>Search Product</u></td>
                            </tr>
                            <tr>
                                 <td>
                                <p>
                                    Product Id<br>
                                    <input type="text" name="p_id" class="required" placeholder="enter product id" >
                                </p>
                                <p>
                                    <input type="submit" value="Search" class='submit_btn'>
                                    <input type="reset" value="Redet" class='submit_btn'>
                                </p>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td align="right" >
                                    <img src="imgs/searchBrand.png" width="60" title="Search Product">
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
