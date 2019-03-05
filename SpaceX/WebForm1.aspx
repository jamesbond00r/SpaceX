<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="SpaceX.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblBirthDate" Text="Birth Date" />

                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtBirthDate" runat="server">

                    </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('<%=String.Format("#{0}", txtBirthDate.ClientID) %>').datepicker();
                });
            </script>
            

        </div>
    </form>
</body>
</html>
