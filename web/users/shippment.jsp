<%@page import="projbeans.cartDetailBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Main Page</title>
        <script>
            <%@include file="javascript.js" %>
        </script>

        <script src="jquery-1.12.3.min.js" type="text/javascript"></script>
        <script src="jquery.validate.js" type="text/javascript"></script>
        
        <script>
          $(document).ready(
                  function() {
                      $("#shipmnt").validate(
                              {
                                  messages:
                                          {
                                              name:
                                                      {
                                                          required: "Please fill Receiver's Name"
                                                                  //maxlength: "Maximum 10 characters"
                                                      },
                                              contact:
                                                      {
                                                          required: "Please fill the valid contact No"
                                                                  //maxlength: "Maximum 10 characters"
                                                      },
                                              address:
                                                      {
                                                          required: " Please Fill proper address"
                                                      }
                                          }
                              }
                      );

                  });
                  
                  
                  
                  function abc1(j)
                  {
                      var k=document.getElementById(j);
                      var kh=$('#paymode').val();
                      
                      if(kh=="card")
                          k.className="show";
                      else
                           k.className="hide";
                     
                  }
        </script>
        
        <style>
            .hide
            {
                display: none;
            }
            .show
            {
                visibility: visible;
                    
            }
            
            
            
        </style>
        
        
    </head>

    <body>

        <table width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
            <tr>
                <td height="120px">
                    <%                        PrintWriter p1 = response.getWriter();
                        HttpSession q1 = request.getSession(true);
                        String user = (String) q1.getAttribute("username");

                        if (user == null) {
                    %>
                    <!-- Top Menu starts-->
                    <%@include file = "header_visitor.jsp"%>
                    <!-- Top Menu ends --> 
                    <%
                    } else {
                    %>
                    <!-- Top Menu starts -->
                    <%@include file="header_user.jsp" %>
                    <!-- Top Menu ends --> 
                    <%
                        }
                    %>
                </td>
            </tr>
            <!-- Top Menu starts -->
            <%@include file="topmenu.jsp" %>
            <!-- Top Menu ends -->

            <tr>
                <td height="300px" valgin="top">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0" >	<tr>		
                            <td height="300px" width="140px" valign="top" align="center" class="sideMenuContainer">

                                <!-- Side Menu starts  height="300px" -->
                                <%@include file="sidemenu.jsp" %>
                                <!-- Side Menu Ends-->

                            </td>

                            <td  valign="top" align="center">

                                <!---------------------------------------------------- slider starts ----------------------------------------------------->
                                <table border="0" align="center">
                                    <tr>
                                        <td  class="content_table">
                                            <form action="saveshippment.jsp" method="post" class="formdata" name="shipmnt" id="shipmnt">
                                                <p><b><u>
                                                            Shipment Details
                                                        </u></b></p>
                                                <p>
                                                    Name:<br>
                                                    <input type="text" name="name" id="name" size="50" placeholder="enter first name" class="required">
                                                </p>
                                                <p>
                                                    Address:<br>
                                                    <textarea name ="address" id ="address" rows="4" cols="46" class="required" placeholder="enter your mailing address">
                    
                                                    </textarea>
                                                </p>
                                                <p>
                                                    Contact:<br>
                                                    <input type="text" name="contact" id=contact" class="required digits" placeholder="enter your contact number"  size="50" maxlength="10">
                                                </p>
                                                <p>
                                                    Discount Coupon:<br>
                                                    <input type="text" name="discount" dicount="discount" size="50"  placeholder="enter your coupon details">
                                                </p>
                                                <p>
                                                    Mode of Payment:<br>
                                                    <select name="paymode" id="paymode" onchange="abc1('ch1')" >
                                                        <option  value="cod">Cash on Delievery</option>
                                                        <option value="card">Credit Card</option>
                                                        <option value="cheque">Cheque</option>
                                                    </select>

                                                </p>
                                                
                                                
                                                <div id="ch1" class="hide">
                                                    <p>
                                                        Card Details:<br>
                                                        <input type="text" name="card_detail" id="card_detail" size="50" placeholder="enter card no">
                                                    </p>
                                                </div>
                                                <p>
                                                    Payment Details:<br>
                                                    <input type="text" name="paydetails" id="paydetails" size="50" placeholder="if cheque, then enter your cheque details">
                                                </p>

                                                <p align="center">
                                                    <input type="submit" value="Submit" id="x1" class="submit_btn"> 
                                                    <input type="Reset" name = "Reset" value = "reset" class="submit_btn">
                                                </p>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                                <!---------------------------------------------------- slider ends ------------------------------------------------------->
                            </td>

                        </tr>
                        <tr><td>&nbsp;</td></tr>
                    </table>
                </td>
            </tr>


            <tr>
                <!-- Footer starts -->
                <%@include file="footer.jsp" %>
                <!-- Footer ends -->
            </tr>



        </table>


    </body>
</html>



