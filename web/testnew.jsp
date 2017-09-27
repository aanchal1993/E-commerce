<%-- 
    Document   : testnew
    Created on : 24 May, 2016, 12:14:40 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <script>
            
             $(document).ready(function()
            {
            var urlx;
                    $("#form1").validate(
            {
            submitHandler:function(form)
            {
            var param = $(form).serialize();
                    $.ajax({
                    url:urlx,
                            type:"post",
                            data:param,
                            success:function(result)
                            {
                            $("#k1").html(result);
                            }

                    });
            }
            }
            );
            })
            
            
            
            
            </script>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
var username = $("#username").val();
                                    var password = $("#password").val();
                                    var chk;
                                    if (document.f1.r1[0].checked)
                            {
                            chk = document.f1.r1[0].value;
                                    alert(chk);
                            }

                            else
                                    chk = document.f1.r1[1].value;
                                    var a = document.getElementById(f1);
                                    if (chk == "admin"){
                            alert("executed");
                                    document.f1.submit();
                                    a.action = "admin.jsp";
                            }
                            else
                            {
                            document.f1.submit();
                                    a.action = "merchant.jsp";
                            }