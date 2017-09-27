<%-- 
    Document   : modifybrandsave
    Created on : 11 May, 2016, 9:27:05 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.brand"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Brand Details</title>
        <link href="admin.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <div align="center" class="bg">
        <table width="80%" border="0" cellpadding="5" cellspacing="0" class="main_content_table">
            <tr>
                <td><u>Update Brand</u></td>
            </tr>

            <tr>
                <td align="center">
                    <%
                        String bcode, bname;
                        bcode = request.getParameter("bcode");
                        bname = request.getParameter("bname");

                        brand x = new brand();
                        x.setBcode(bcode);
                        x.setBname(bname);

                        x.modify();
                        response.sendRedirect("showbrand.jsp");
                    %>        

                </td>
            </tr>
        </table>

        </div>
    </body>
</html>
