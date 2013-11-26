<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EstudianteLetras.ascx.cs" Inherits="REGISTRO.EstudianteLetras" %>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ErrorMessage="Ingrese solo letras" 
    
    ValidationExpression="[a-b-c-d-e-f-g-h-i-j-k-l-m-n-o-p-q-r-s-t-u-v-w-x-y-z-A-Z- ]*" 
    ControlToValidate="TextBox2" ForeColor="Red"></asp:RegularExpressionValidator>

<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="TextBox2" ErrorMessage="Ingrese un Valor" 
    ForeColor="Red"></asp:RequiredFieldValidator>


