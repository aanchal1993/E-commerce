<%@page import="projbeans.brand"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brand Details</title>
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
                                                            maxlength: 10
                                                        }
                                            },
                                    messages:
                                            {
                                                catname:
                                                        {
                                                            required: "Please fill category name",
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
            <table  border="0" cellspacing="2" cellpadding="2" align="center" class="main_content_table">

                <tr>
                    <td align="left"><u>Brand Detail</u></td>
                </tr>

                <tr>
                    <td align="center">
                        <%                            String bcode = request.getParameter("bcode");
                            brand x = new brand();
                            x.setBcode(bcode);
                            boolean b = x.search();
                            if (b == false)
                                out.println("No record found");
                            else {

                                String bname;
                                bname = x.getBname();

                        %>  

                        <form name="f1" id="f1" action="modifybrandsave.jsp" method="post">
                            <div align="center" class="bg">
                                <table>
                                    <tr>
                                        <td>
                                            <p>
                                                Code<br>
                                                <input type="text" name="bcode" value="<%=bcode%>" readonly/>
                                            </p>
                                            <p>
                                                Name<br>
                                                <input type="text" name="bname" id="bname" value="<%=bname%>" class="required"/>
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