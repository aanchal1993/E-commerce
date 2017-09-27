
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.products"%>
<%@page import="projbeans.products"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="products.css" rel="stylesheet" type="text/css">

    <title>All Products</title>

</head>
<body>
    <!-- Header Starts -->
    <%@include file="product_header.jsp" %>
    <!-- Header Ends -->

     <div align="center" class="bg">
    <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
        <tr>
            <td><u>Category List</u></td>
</tr>
<tr>

    <td align="center">
        <%
            products t = new products();
            ArrayList a = t.showAll();
            if (a.size() == 0)
                out.println("No data found");
            else {
        %>

        <table border="0">
            <tr>
                <th valign="top" align="left">Product ID</th>
                <th align="left" valign="top">SubCategory Id</th>
                <th align="left" valign="top">Merchant Id</th>
                <th align="left" valign="top">Brand Id</th>
                <th align="left" valign="top">Product Name</th>
                <th align="left" valign="top">Price&nbsp;&nbsp;</th>
                <th align="left" valign="top">Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th align="left" valign="top">Status&nbsp;&nbsp;</th>
                <th align="left" valign="top">Image</th>
                <th align="left" valign="top">Image1</th>
                <th align="left" valign="top">Quality</th>
            </tr>
            <%
                String p_id, subcatcode, m_id, bcode, p_name, p_price, p_description, p_status, p_image, p_image1, p_quantity;
                Iterator k = a.iterator();
                while (k.hasNext()) {
                    products w = (products) k.next();
                    p_id = w.getP_id();
                    subcatcode = w.getSubcatcode();
                    m_id = w.getM_id();
                    bcode = w.getBcode();
                    p_name = w.getP_name();
                    p_price = w.getP_price();
                    p_description = w.getP_description();
                    p_status = w.getP_status();
                    p_image = w.getP_image();
                    p_image1 = w.getP_image1();
                    p_quantity = w.getP_quantity();
            %>
            <tr>
                <td><%=p_id%></td>
                <td><%=subcatcode%></td>
                <td><%=m_id%></td>
                <td><%=bcode%></td>
                <td><a href="showproductdata.jsp?p_id=<%=p_id%>"><%=p_name%></a></td>
                <td><%=p_price%></td>
                <td><%=p_description%></td>
                <td><%=p_status%></td>
                <%-- <td><%=p_image%></td> --%>
                <%-- <td><%=p_image1%></td> --%>
                <td><img src=uploadedimages/<%=p_image%> width="100" title="Product Image"></td>
                <td><img src=uploadedimages/<%=p_image1%> width="100" title="Product Image1"></td>
                <td><%=p_quantity%></td>


                <td><a href="editproductdata.jsp?p_id=<%=p_id%>"><img src="imgs/edit.png" title="edit"></a></td>
                <td><a href="deleteproductdata.jsp?p_id=<%=p_id%>"><img src="imgs/cross.jpg" title="edit"></a></td>
            </tr>
             <%
                            }
                        %>
                    </table>
                    <%
                        }
                    %>   

                </td>
            </tr></table>
        </div>
                    <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
    </body>
</html>
