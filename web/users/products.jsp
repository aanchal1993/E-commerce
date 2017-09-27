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
    <table width="600" border="5" cellspacing="2" cellpadding="2" align="center">
        <tr>
            <td><u>Category List</u></td>
</tr>
<tr>

    <td align="center">
        <%
            String subcatcode=request.getParameter("subcatcode");
            products t = new products();
            ArrayList a = t.displayProducts(subcatcode);
            if (a.size() == 0)
                out.println("No data found");
            else {
        %>
        
           <table border="1" width="400px">
            <tr>
                <th>Product ID</th>
                <th>Image</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quality</th>
            </tr>
            <%
                String p_id, m_id, bcode, p_name, p_price, p_description, p_status, p_image, p_image1, p_quantity;
                Iterator k = a.iterator();
                while (k.hasNext()) {
                    products w = (products) k.next();
                    p_id = w.getP_id();
                    p_image = w.getP_image();
                    p_name = w.getP_name();
                    p_price = w.getP_price();
                    p_description = w.getP_description();
                    p_quantity = w.getP_quantity();
                   
            %>
            <tr>
                <td><%=p_image%></td>
                <td><%=p_name%></td>
                <td><%=p_price%></td>
                <td><%=p_description%></td>
                <td><%=p_quantity%></td>
                
                <td><a href="cart.jsp?p_id=<%=p_id%>">Add to cart</a></td>
                <td><a href="viewproduct.jsp?p_id=<%=p_id%>">Details</a></td>
            </tr>
            <%
                }
 
                
            }
        %>
    </td>
</tr>
        </table>


        </body>