<%-- 
    Document   : showproductdata
    Created on : 13 May, 2016, 2:37:16 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="projbeans.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="products.css" rel="stylesheet" type="text/css">

        <title>Product Data</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
       
        <!-- Content Starts -->

 <div align="center" class="bg">
        <table  cellspacing="2" cellpadding="2" align="center" class="main_content_table">

            <tr>
                <td><u>Product Detail</u></td>
    </tr>

    <tr>
        <td align="center">
            <%                        String p_id;
                p_id = request.getParameter("p_id");

                products x = new products();
                x.setP_id(p_id);
                boolean b = x.search();
                if (b == false)
                    out.println("No record found");
                else {

                    String subcatcode, m_id, bcode, p_name, p_price, p_description, p_status, p_image, p_image1, p_quantity;

                    subcatcode = x.getSubcatcode();
                    m_id = x.getM_id();
                    bcode = x.getBcode();
                    p_name = x.getP_name();
                    p_price = x.getP_price();
                    p_description = x.getP_description();
                    p_status = x.getP_status();
                    p_image = x.getP_image();
                    p_image1 = x.getP_image1();
                    p_quantity = x.getP_quantity();


            %>  


            <table >
                <tr>
                    <td>Product Id</td>
                    <td><%=p_id%></td>
                </tr>
                
                <tr>
                    <td>Sub Category Code</td>
                    <td><%=subcatcode%></td>
                </tr>
                
                <tr>
                    <td>Merchant Id</td>
                    <td><%=m_id%></td>
                </tr>
                
                <tr>
                    <td>Brand Code</td>
                    <td><%=bcode%></td>
                </tr>
                
                <tr>
                    <td>Product Name</td>
                    <td><%=p_name%></td>
                </tr>
                
                <tr>
                    <td>Product Price</td>
                    <td><%=p_price%></td>
               </tr>
                
                <tr>
                    <td>Product Description</td>
                     <td><%=p_description%></td>
                </tr>
                <tr>
                    <td>Product Status</td>
                    <td><%=p_status%></td>
                </tr>
                <tr>
                    <td>Product Image</td>
                    <td><img src="uploadedimages/<%=p_image%>" align="center" width="100" title="Product Image"></td>
                </tr>
                <tr>
                    <td>Product Image1</td>
                    <td><img src="uploadedimages/<%=p_image1%>" align="center" width="100" title="Product Image1"></td>
                </tr>
                <tr>
                    <td>Product Quantity</td>
                    <td><%=p_quantity%></td>
                    
                </tr>

            </table>
   
            <%
                }
            %>

        </td>
    </tr>
</table>

 </div>
</body>
</html>
