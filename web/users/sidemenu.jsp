<%@page import="projbeans.subcategory"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.category"%>
        <style>
            .subcat{
                display:none;
            }
            
            </style>
            <script>
          function  showSideSubmenu(x)
          {
             hideSubMenu();
              $("#"+x).show();
          }
          
          function hideSubMenu()
          {
              $(".subcat").hide();
          }
            </script>
               
<table border="0" width="250px" cellpadding="0" cellspacing="0" class="side" >	

    <%
        category c = new category();
        ArrayList a = c.sideMenu();
        if (a.size() == 0)
            out.println("No data found");
        else {
            String catcode, catname;
            Iterator k = a.iterator();
            while (k.hasNext()) {
                category w = (category) k.next();
                catcode = w.getCatcode();
                catname = w.getCatname();
    %>
    <tr>
    <tr><td class="sideMenu"><a href="javascript:showSideSubmenu('sub-<%=catcode%>')"><%=catname%></a>

            <table width="120px" cellpadding="0" cellspacing="0" id="sub-<%=catcode%>" class="subcat">

                <%
                    subcategory sc = new subcategory();
                    ArrayList a1 = sc.sideMenu(catcode);
                    if (a.size() == 0)
                        out.println("No data found");
                    else {
                        String subcatcode, subcatname;
                        Iterator k1 = a1.iterator();
                        while (k1.hasNext()) {
                            subcategory w1 = (subcategory) k1.next();
                            subcatcode = w1.getSubcatcode();
                            subcatname = w1.getSubcatname();
                %>
                <tr><td><a href="subcategorydata.jsp?subcatcode=<%=subcatcode%>"><%=subcatname%> </a>
                        

                <%
                    }
                %>
        </td></tr>
        <%
            }
        %>
</table>
<%
                    }
                %>
        </td></tr>
        <%
            }
        %>

</table>