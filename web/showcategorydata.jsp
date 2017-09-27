<%@page import="projbeans.category"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Category Data</title>
        
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->

        <!-- Content Starts -->
 <div align="center" class="bg">
        <table   cellspacing="2" cellpadding="2" align="center" class="main_content_table">

            <tr>
                <td><u>Category Detail</u></td>
            </tr>

            <tr>
                <td align="center">
                    <%                        String catcode;
                        catcode = request.getParameter("catcode");

                        category x = new category();
                        x.setCatcode(catcode);
                        boolean b = x.search();
                        if (b == false)
                            out.println("No record found");
                        else {

                            String catname;
                            catname = x.getCatname();
                    %>  

                    <table  width="450px">
                        <tr>
                            <td>Code</td>
                            <td><%=catcode%></td>

                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><%=catname%></td>

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
