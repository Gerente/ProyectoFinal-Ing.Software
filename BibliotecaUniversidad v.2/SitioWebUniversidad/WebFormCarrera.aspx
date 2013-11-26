<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCarrera.aspx.cs" Inherits="SitioWebUniversidad.WebFormCarrera" %>

<%@ Register src="EstudianteNum.ascx" tagname="EstudianteNum" tagprefix="uc1" %>
<%@ Register src="EstudianteLetras.ascx" tagname="EstudianteLetras" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 357px;
        }
        .style3
        {
            width: 519px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    Carreras</td>
            </tr>
            <tr>
                <td class="style1">
                    Codigo:</td>
                <td class="style3">
                    <uc1:EstudianteNum ID="EstudianteNum1" runat="server" />
                </td>
                <td>
                    <asp:Button ID="btnbuscar" runat="server" onclick="btnbuscar_Click" 
                        Text="BUSCAR" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Nombre:</td>
                <td class="style3">
                    <uc2:EstudianteLetras ID="EstudianteLetras1" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Detalle:</td>
                <td class="style3">
                    <asp:TextBox ID="txtdetalle" runat="server" Height="78px" TextMode="MultiLine" 
                        Width="242px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtdetalle" ErrorMessage="Ingrese Detalle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnmodificar" runat="server" onclick="btnmodificar_Click" 
                        Text="MODIFICAR" />
                </td>
                <td class="style3">
                    <asp:Button ID="btnaceptar" runat="server" onclick="Button1_Click" 
                        Text="ACEPTAR" Width="123px" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="btneliminar" runat="server" onclick="Button3_Click" 
                        Text="ELIMINAR" Width="136px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="detalle" HeaderText="Detalle" />
                            <asp:CommandField HeaderText="Seleccionar" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
