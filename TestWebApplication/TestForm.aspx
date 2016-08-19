<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm.aspx.cs" Inherits="TestWebApplication.TestForm" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Document</title>
    <script src="Scripts/jquery-3.1.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(e) {
            $("input").change(function () {
                //alert("it works");
                var sum = 0;
                $("input[name=textBox]").each(function () {
                    sum = sum + parseInt($(this).val());
                })
                $("input[name=resultTextBox]").val(sum);
            });
        });
    </script>
</head>

<body>
    Only for Test
    <form id="test_form" runat="server">
        <table>

            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="First Number"></asp:Label>
                </td>
                <td>
                    <input name="textBox" type="text" value="0"/>
                    <%--<asp:TextBox ID="firstNumberTextBox" name="textBox" runat="server" AutoCompleteType="Disabled"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label2" runat="server" Text="Second Number"></asp:Label>
                </td>
                <td>
                    <input name="textBox" type="text" value="0"/>
                    <%--<asp:TextBox ID="secondNumberTextBox" name="textBox" runat="server" AutoCompleteType="Disabled"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Result"></asp:Label>
                </td>
                <td>
                    <input name="resultTextBox" type="text"/>
                    <%--<asp:TextBox ID="resultTextBox" name="sumTextBox" runat="server" AutoCompleteType="Disabled"></asp:TextBox>--%>
                </td>
            </tr>

        </table>
    </form>
</body>

</html>
