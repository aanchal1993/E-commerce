
function showMenu(x)
{
    var t = document.getElementById(x);
    t.style.visibility = "visible";
}

function hideMenu(x)
{
    var t = document.getElementById(x);
    t.style.visibility = "hidden";
}


function showSideSubmenu(catcode)
{
    //alert(x);
    var t = document.getElementById(catcode);
    t.style.display = "inline-block";

    $(document).ready(
            function() {
               

                $("#catcode").click(
                        function() {
                            $("#t1").show();
                        }
                );

                
            });
}

          