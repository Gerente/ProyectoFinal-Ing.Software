<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Estudiante.ascx.cs" Inherits="REGISTRO.Estudiante" %>
<style type="text/css">
    .style2
    {
        width: 132px;
    }
    .style3
    {
        width: 150px;
    }
</style>
<p>
            <asp:TextBox ID="TextBox1" runat="server"
                Width="139px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Ingrese Correo " 
                            
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
        runat="server" ControlToValidate="TextBox1" ErrorMessage="Codigo Obligatorio" 
                ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
</p>





