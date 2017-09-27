<%@page import="projbeans.subcategory"%>
<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sub-Category Details</title>
        <link href="admin.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script>

            $(document).ready(
                    function() {

                        $("#f1").validate(
                                {
                                    rules:
                                            {
                                                subcatname:
                                                        {
                                                            minlength: 1,
                                                            maxlength: 10
                                                        }
                                            },
                                    messages:
                                            {
                                                subcatname:
                                                        {
                                                            required: "Please fill sub-category name",
                                                            maxlength: "Maximum 10 characters"
                                                        }
                                            }
                                }
                        );

                    });
        </script>
    </head>
    <body>

        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
<div align="center" class="bg">
        <table width="600" border="5" cellspacing="2" cellpadding="2" align="center" class="main_content_table">

            <tr>
                <td><u>Sub-Category Detail</u></td>
            </tr>

            <tr>
                <td align="center">
                    <%
                        String subcatcode = request.getParameter("subcatcode");
                        
                        subcategory x = new subcategory();
                         x.setSubcatcode(subcatcode);
                        
                        boolean b = x.search();
                        if (b == false)
                            out.println("No record found");
                        else {
                            String catcode = x.getCatcode();
                           String subcatname = x.getSubcatname();
                           
                           System.out.println(catcode);
                            System.out.println(subcatcode);
                            System.out.println(subcatname);
                    %>  

                    <form name="f1" id="f1" action="modifysubcategorysave.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    Category Code:<br>
                                    <input type="text" name="catcode" value="<%=catcode%>" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Sub-Category Code:<br>
                                    <input type="text" name="subcatcode" value="<%=subcatcode%>" readonly/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    Sub-Category Name:<br>
                                    <input type="text" name="subcatname" id="subcatname" value="<%=subcatname%>" class="required"/>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="submit" value="save"></td>
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