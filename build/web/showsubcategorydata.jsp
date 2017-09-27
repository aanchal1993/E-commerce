<%@page import="projbeans.subcategory"%>

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

        <!-- Content Starts -->

        <div align="center" class="bg">
        <table  cellspacing="2" cellpadding="2" align="center" class="main_content_table">

            <tr>
                <td><u>Sub-Category Detail</u></td>
            </tr>

            <tr>
                <td align="center">
                    <%                        
                        String subcatcode = request.getParameter("subcatcode");
                        
                        subcategory x = new subcategory();
                        x.setSubcatcode(subcatcode);
                        System.out.println(subcatcode);
                        boolean b = x.search();
                        if (b == false)
                            out.println("No record found");
                        
                        else {
                            String catcode, subcatname;
                            catcode = x.getCatcode();
                           
                            subcatname = x.getSubcatname();
                    %>  

                    <table border="0" width="400px">
                        <tr>
                            <td>Category Code</td>
                            <td><%=catcode%></td>

                        </tr>
                        <tr>
                            <td>Sub-Category Code</td>
                            <td><%=subcatcode%></td>
                        </tr>
                        <tr>
                            <td>Sub-Category Name</td>
                            <td><%=subcatname%></td>
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
