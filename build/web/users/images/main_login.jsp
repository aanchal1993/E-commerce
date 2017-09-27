<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Main Page</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
    </head>

    <body>

        <table border="2" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
            <tr>
                <td height="120px">
                    <!-- Header starts -->
                    <%@include file="header.jsp" %>
                    <!-- Header Ends -->
                </td>
            </tr>
                    <!-- Top Menu starts -->
                    <%@include file="topmenu.jsp" %>
                    <!-- Top Menu ends -->

            <tr>
                <td height="300px">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0" >	<tr>		
                            <td height="300px" width="140px" valign="top" align="center" class="sideMenuContainer">

                                <!-- Side Menu starts  height="300px" -->
                                <%@include file="sidemenu.jsp" %>
                                <!-- Side Menu Ends-->

                            </td>

                            <!-- slider starts -->
                            <%@include file="slider.jsp" %>
                            <!-- slider ends -->

                        </tr>
                    </table>
                </td>
            </tr>

            <!-- Bottom Menu starts -->
            <%@include file="topmenu.jsp" %>
            <!-- Bottom Menu ends-->

            <!-- Footer starts -->
            <%@include file="footer.jsp" %>
            <!-- Footer ends -->


        </table>


    </body>
</html>