
<%@page import="java.util.Iterator"%>
<%@page import="projbeans.subcategory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Show Sub-Categories</title>


    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr>
                    <td><u>Sub-Category List</u></td>
                </tr>
                <tr>

                    <td align="center">
                        <%                        subcategory t = new subcategory();
                            ArrayList a = t.showAll();
                            if (a.size() == 0)
                                out.println("No data found");
                            else {
                        %>
                        <table border="0" width="490px">
                            <tr>
                                <th>Category Code&nbsp;&nbsp;</th>
                                <th>SubCategory Code&nbsp;&nbsp;</th>
                                <th>SubCategory Name&nbsp;</th>
                            </tr>
                            <%
                                String catcode, subcatcode, subcatname;
                                Iterator k = a.iterator();
                                while (k.hasNext()) {
                                    subcategory w = (subcategory) k.next();
                                    catcode = w.getCatcode();
                                    subcatcode = w.getSubcatcode();
                                    subcatname = w.getSubcatname();
                            %>
                            <tr>
                                <td><%=catcode%></td>
                                <td><%=subcatcode%></td>
                                <td><a href="showsubcategorydata.jsp?subcatcode=<%=subcatcode%>"><%=subcatname%></a></td>
                                <td><a href="editsubcategorydata.jsp?subcatcode=<%=subcatcode%>"><img src="imgs/edit.png" title="edit"></a>
                                    <a href="deletesubcategorydata.jsp?subcatcode=<%=subcatcode%>"><img src="imgs/cross.jpg" title="delete"></a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                        <%
                            }
                        %>   

                    </td>
                </tr>
            </table>
            </div>
<!-- Footer Starts -->
<%@include file="footer.jsp" %>
<!-- Footer Ends -->
</body>
</html>
