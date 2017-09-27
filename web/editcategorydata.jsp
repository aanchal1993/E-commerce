<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category  Details</title>
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
                                                catname:
                                                        {
                                                            minlength: 1,
                                                            maxlength: 20
                                                        }
                                            },
                                    messages:
                                            {
                                                catname:
                                                        {
                                                            required: "Please fill category name",
                                                            maxlength: "Maximum 20 characters"
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
            <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">

                <tr>
                    <td><u>Category Detail</u></td>
                </tr>

                <tr>
                    <td align="center">
                        <%                            String catcode = request.getParameter("catcode");
                            category x = new category();
                            x.setCatcode(catcode);
                            boolean b = x.search();
                            if (b == false)
                                out.println("No record found");
                            else {

                                String catname;
                                catname = x.getCatname();

                        %>  

                        <form name="f1" id="f1" action="modifycategoryesave.jsp" method="post">
                            <table>
                                <tr>
                                    <td>
                                        <p>
                                            Code<br>
                                            <input type="text" name="catcode" id="catcode" value="<%=catcode%>" readonly class="required"/>
                                        </p>
                                        <p>
                                            Name<br>
                                            <input type="text" name="catname" id="catname" value="<%=catname%>" class="required"/>
                                        </p>
                                        <p>
                                            <input type="submit" value="Update" class="submit_btn">
                                            <input type="reset" value="Reset" class="submit_btn"> 
                                        </p>
                                    </td>
                                    <td align="right" >
                                        <img src="imgs/ModifyMerchant.png" width="60" title="Edit Category Data">
                                    </td>
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