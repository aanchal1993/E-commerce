<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="admin.css" rel="stylesheet" type="text/css">

    </head>
    <body>

        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">

            <table width="300" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr><td>
                        <form action="subcatsave.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Add Sub Category</u></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                        <input type="hidden" name="subcatcode">
                                        
                                        Name<br>
                                        <input type="text" name="subcatname" />
                                        </p>
                                        <p>
                                
                                        Category<br>
                                        <%                                category q1 = new category();
                                            ArrayList a = q1.showAll();
                                            Iterator y = a.iterator();

                                        %>

                                        <select name="catcode"  >
                                            <%                                    String ccode, cname;
                                                while (y.hasNext()) {
                                                    category z = (category) y.next();
                                                    ccode = z.getCatcode();
                                                    cname = z.getCatname();
                                            %>
                                            <option value="<%=ccode%>"><%=cname%></option>

                                            <%
                                                }

                                            %>
                                        </select>
                                    </p>

                                    <p>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="submit" value="Save" class="submit_btn">
                                        <input type="reset" value="Reset" class="submit_btn">
                                    </p>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td></tr>
            </table>

        </div>
        <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
    </body>
</html>
