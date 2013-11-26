<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EstudianteNum.ascx.cs" Inherits="REGISTRO.EstudianteNum" %>
<p>
            <asp:TextBox ID="TextBox6" runat="server" 
                Width="139px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Ingrese numero" ValidationExpression="[0-9]*" 
                ControlToValidate="TextBox6" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Campo Obligatorio" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </p>




