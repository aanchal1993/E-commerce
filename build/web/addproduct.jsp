<%-- 
    Document   : p_merchant
    Created on : 12 May, 2016, 3:26:10 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.brand"%>
<%@page import="projbeans.merchant"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.subcategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link href="products.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script>


            $(document).ready(
                    function() {

                        $("#f1").validate(
                                {
                                    
                                    messages:
                                            {
                                                p_price:
                                                        {
                                                            required: "Please fill correct price"
                                                            //maxlength: "Maximum 10 characters"
                                                        },
                                                p_quantity:
                                                        {
                                                            required: "Please fill the correct quantity"
                                                            //maxlength: "Maximum 10 characters"
                                                        },
                                                p_description:
                                                        {
                                                            required:" Please Fill proper description to the product",
                                                            maxlength: "Maximum 1000 characters"
                                                        }
                                            }
                                }
                        );

                    });
        </script>
    </head>
    <body>
<div align="center" class="bg">
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
        
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td >
                    <form name="f1" id="f1" action="saveproduct.jsp" method="post" enctype="multipart/form-data">
                        <table>
                            <tr>
                                <td><u>Add Product</u></td>
                            </tr>

                            <tr>
                                <td>Product Id:<br>
                                    <input type="text" name="p_id" id="p_id" size='40' placeholder="enter product's id">
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Sub Category:<br>
                                    <%                                subcategory q1 = new subcategory();
                                        ArrayList a = q1.showAll();
                                        Iterator y = a.iterator();

                                    %>

                                    <select name="subcatcode" >
                                        <%                                    String subcatcode, subcatname;
                                            while (y.hasNext()) {
                                                subcategory z = (subcategory) y.next();
                                                subcatcode = z.getSubcatcode();
                                                subcatname = z.getSubcatname();
                                        %>
                                        <option value="<%=subcatcode%>"><%=subcatname%></option>

                                        <%
                                            }

                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Merchant:<br>
                                    <%                                merchant q2 = new merchant();
                                        ArrayList a2 = q2.showAll();
                                        Iterator y2 = a2.iterator();

                                    %>

                                    <select name="m_id" >
                                        <%                                    String m_id, m_name;
                                            while (y2.hasNext()) {
                                                merchant z2 = (merchant) y2.next();
                                                m_id = z2.getM_id();
                                                m_name = z2.getM_name();
                                        %>
                                        <option value="<%=m_id%>"><%=m_name%></option>

                                        <%
                                            }

                                        %>
                                    </select>
                                </td>

                            </tr>
                            <tr>
                                 <td>
                                    Brand:<br>
                                    <%                                brand q3 = new brand();
                                        ArrayList a3 = q3.showAll();
                                        Iterator y3 = a3.iterator();

                                    %>

                                    <select name="bcode" >
                                        <%                                    String bcode, bname;
                                            while (y3.hasNext()) {
                                                brand z3 = (brand) y3.next();
                                                bcode = z3.getBcode();
                                                bname = z3.getBname();
                                        %>
                                        <option value="<%=bcode%>"><%=bname%></option>

                                        <%
                                            }

                                        %>
                                    </select>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    Product Name: <br>
                                    <input type="text" name="p_name" id="p_name" class="required" size='40' placeholder="enter product's name">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Product Price:<br>
                                    <input type="text" name="p_price" id="p_price" class="required digits" size='40' placeholder="enter product's price">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Product Description:<br>
                                    <textarea id="p_description" name="p_description" rows="6" cols="50" class="required" placeholder="enter product's description">
                                        
                                    </textarea>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Product Status:<br>
                                    <input type="text" name="p_status" id="p_status" class="required" size='40' placeholder="enter T/F">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Product Image:<br>
                                    <input type="file" name="p_image" id="p_image" class="required">
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Product Image1:<br>
                                    <input type="file" name="p_image1" id="p_image1">
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Product Quantity:<br>
                                    <input type="text" name="p_quantity" id="p_quantity" class="required digits" size='40' placeholder="enter product's quantity">
                                </td>
                            </tr>

                            <tr> 
                                <td>
                                    <input type="submit" value="Save" class="submit_btn"> 
                                    <input type="reset" value="Reset" class="submit_btn"> 
                                </td>
                            </tr>
                        </table>
                    </form>
        </table>
                                 
        <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
        </div>  
    </body>
</html>
