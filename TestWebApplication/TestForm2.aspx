<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm2.aspx.cs" Inherits="TestWebApplication.TestForm2" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Document</title>
    
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
                   <asp:TextBox ID="firstNumberTextBox" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label2" runat="server" Text="Second Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="secondNumberTextBox" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Result"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="resultTextBox" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="testButton" runat="server" Text="Button" OnClick="testButton_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:TextBox ID="showValueTextBox"  runat="server" ></asp:TextBox>
                </td>
                <td>
                   
                </td>
            </tr>

        </table>
    </form>
    <button>Click Here</button>
    <p>hgshgshdghsdgsdg</p>
    
    
    <script src="Scripts/jquery-3.1.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("input").change(function () {
                //alert("it works");
                var sum = 1;
                //$("input[name=textBox]").each(function () {
                //    sum = sum + parseInt($(this).val());
                //})
                sum = sum * parseInt($("input[name=firstNumberTextBox]").val());
                sum = sum * parseInt($("input[name=secondNumberTextBox]").val());

                $("input[name=resultTextBox]").val(sum);

                $("button").click(function () {
                    $("p").toggle();
                });
            });
        });
    </script>
</body>

</html>
