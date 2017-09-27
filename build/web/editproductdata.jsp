<%-- 
    Document   : editproductdata
    Created on : 12 May, 2016, 11:25:23 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="products.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>

        <script>

            $(document).ready(
                    function() {

                        $("#f1").validate(
                                {
                                    rules:
                                            {
                                                p_name:
                                                        {
                                                            minlength: 5,
                                                            maxlength: 100
                                                        },
                                                p_description:
                                                        {
                                                            minlength: 10,
                                                            maxlength: 1000
                                                        },
                                                
                                                p_status:
                                                        {
                                                            minlength: 1,
                                                            maxlength: 1
                                                        }

                                            },
                                    messages:
                                            {
                                                p_name:
                                                        {
                                                            required: "Please fill Product's Name",
                                                            minlength: "At least 5 characters",
                                                            maxlength: "Maximum 20 characters"
                                                        },
                                                p_description:
                                                        {
                                                            required: "Please fill the product's description",
                                                            minlength: "At least 10 characters",
                                                            maxlength: "Maximum 1000 characters"
                                                        },
                                                p_price:
                                                        {
                                                            required: "Please fill the product's price"
                                                        },
                                                p_status:
                                                        {
                                                            required: "Enter the status (either t or f)",
                                                            minlength: 1,
                                                            maxlength: 1
                                                        },
                                                p_quantity:
                                                        {
                                                            required: "Please fill the product's quantity"

                                                        }
                                            }
                                }
                        );


                    });

        </script> 

    </head>
    <body>

        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
<div align="center" class="bg">
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">

            <tr>
                <td><u>Category Detail</u></td>
    </tr>

    <tr>
        <td align="center">
            <%                String p_id = request.getParameter("p_id");
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
                    p_quantity = x.getP_quantity();
                    p_image=x.getP_image();
                    p_image1=x.getP_image1();
                    


            %>  
            <form name="f1" id="f1" action="modifyproductsave.jsp" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><u>Update Merchant Details</u></td>
                    </tr>


                    <tr>
                        <td>
                            Product Id:<br>
                            <input type="text" name="p_id" value="<%=p_id%>" readonly>
                        </td>
                    </tr>

                    <tr>

                        <td>
                            Sub-Category Code:<br>
                            <input type="text" name="subcatcode" id="subcatcode" value="<%=subcatcode%>" class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Merchant Id:<br>
                            <input type="text" name="m_id" id="m_id" value="<%=m_id%>"  class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Brand Id<br>
                            <input type="text" name="bcode" id="bcode" value="<%=bcode%>" class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Name: <br>
                            <input type="text" name="p_name" value="<%=p_name%>" class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Price:<br>
                            <input type="text" name="p_price" value="<%=p_price%>" class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Description:<br>
                            <input type="text" id="p_description" name="p_description" value="<%=p_description%>" class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Status:<br>
                            <input type="text" name="p_status" id="p_status" value="<%=p_status%>" placeholder="enter 't' or 'f'" class="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Image:<br>
                            <input type="file" name="p_image" id="p_image" >
                            
                        </td>
                        <td><img src="uploadedimages/<%=p_image%>" align="center"></td>
                    </tr>

                    <tr>
                        <td>
                            Product Image1:<br>
                            <input type="file" name="p_image1" id="p_image1">
                        </td>
                        <td><img src="uploadedimages/<%=p_image1%>" align="center"></td>
                    </tr>

                    <tr>
                        <td>
                            Product Quantity:<br>
                            <input type="text" name="p_quantity" id="p_quantity" value="<%=p_quantity%>" class="required">
                        </td>
                    </tr>

                    <tr> 
                        <td align='center'>
                            <input type="submit" value="Update" class='submit_btn'>
                            <input type="reset" value="Reset" class="submit_btn">
                        </td>
                    </tr>
                </table>
            </form>



            <%
                }
            %>

        </td>
    </tr>
</table>

</div>


</body>
</html>