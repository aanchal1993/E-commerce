<%-- 
    Document   : modifycategoryesave
    Created on : 11 May, 2016, 11:36:23 AM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Category Details</title>
        <link href="admin.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <div align="center" class="bg">
        <table width="600" border="5" cellspacing="2" cellpadding="2" align="center" class="main_content_table">    
            <tr>
                <td>Update Category</td>
            </tr>

            <tr>
                <td align="center">
                    <%
                        String catcode, catname;
                        catcode = request.getParameter("catcode");
                        catname = request.getParameter("catname");

                        category x = new category();
                        x.setCatcode(catcode);
                        x.setCatname(catname);

                        x.modify();
                        response.sendRedirect("showcategory.jsp");
                    %>        

                </td>
            </tr>
        </table>

        </div>
    </body>
</html>
