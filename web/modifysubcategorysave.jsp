<%-- 
    Document   : modifycategoryesave
    Created on : 11 May, 2016, 11:36:23 AM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.subcategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Update Category Details</title>
        
    </head>
    <body>
         <div align="center" class="bg">
          <table width="600" border="5" cellspacing="2" cellpadding="2" align="center" class="main_content_table"> 
            <tr>
                <td><u>Update Category Details</u></td>
            </tr>

            <tr>
                <td align="center">
                    <%
                        String catcode, subcatcode, subcatname;
                        catcode = request.getParameter("catcode");
                        subcatcode = request.getParameter("subcatcode");
                        subcatname = request.getParameter("subcatname");

                        subcategory x = new subcategory();
                        x.setCatcode(catcode);
                        x.setSubcatcode(subcatcode);
                        x.setSubcatname(subcatname);
                        x.modify();
                        System.out.println(catcode + subcatcode + subcatname);
                        response.sendRedirect("showsubcategory.jsp");
                    %>        

                </td>
            </tr>
        </table>

         </div>
    </body>
</html>
