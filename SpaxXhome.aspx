<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TelerikWebForm.aspx.vb" Inherits="TelerikWebForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Space X</title>

    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
<link href="SpaceX/Content/bootstrap.min.css" rel="stylesheet" />
        <link href="StyleSheet.css" rel="stylesheet" />
    <script src="Scripts/JavaScript.js"></script>
</head>

<body>
   
   <div class="img"><img src="SpaceX/Content/spacex-71873-unsplash.jpg" />
<h1>Space X</h1>
</div>
    <div id="data-container">
  
    
    <form id="form1" runat="server" class="col">
        
        </div>
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />

        </Scripts>
    </telerik:RadScriptManager> 
        



    <script type="text/javascript">
       
        var url = 'https://api.spacexdata.com/v3/launches';




$(document).ready(function () {
    $.getJSON(url)
        .done(function (data) {

            $.each(data, function (index) {

                var date = data[index].launch_date_unix;


                var Rocket = data[index].rocket.rocket_name;

                var link = data[index].links.article_link !== null ? '<a href="' + data[index].links.article_link + '">Link</a>' : "No Link";


                var success = data[index].launch_success == true ? "Success" :
                    data[index].launch_failure_details.reason + "<strong> :Failed </strong>";


                $("#form1").append("<table><tr><td>" +"<strong>Launch: </strong>" + [index + 1] + "</td></tr><tr><td>" +"<strong>Rocket Name: </strong>" + Rocket + "</tr></td><tr><td>" +"<strong>Result: </strong>" + success + "</tr></td><tr><td>" +"<strong>Launch: </strong>" + new Date(date * 1000) + "</tr></td><tr><td>" + "<strong>Payload: </strong>" +  link + "</tr></td><tr><td></table>");

                
            });
           

        });
});

    </script>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <div>

    </div>
    </form>
  
</body>
</html>
