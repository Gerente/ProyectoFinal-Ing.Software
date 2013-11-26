<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMateria.aspx.cs" Inherits="SitioWebUniversidad.WebFormMateria" %>

<%@ Register src="EstudianteLetras.ascx" tagname="EstudianteLetras" tagprefix="uc1" %>

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
            width: 403px;
        }
        .style3
        {
            width: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    Materias</td>
            </tr>
            <tr>
                <td class="style3">
                    Sigla:</td>
                <td class="style2">
                    <asp:TextBox ID="txtsigla" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtsigla" ErrorMessage="Codigo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="btnbuscar" runat="server" onclick="btnbuscar_Click" 
                        Text="BUSCAR" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Nombre:</td>
                <td class="style2">
                    <uc1:EstudianteLetras ID="EstudianteLetras1" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Detalle:</td>
                <td class="style2">
                    <asp:TextBox ID="txtdetalle" runat="server" Height="60px" TextMode="MultiLine" 
                        Width="220px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtdetalle" ErrorMessage="Codigo Obligatorio" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="btnmodificar" runat="server" onclick="btnmodificar_Click" 
                        Text="MODIFICAR" />
                </td>
                <td class="style2">
                    <asp:Button ID="btnregistrar" runat="server" onclick="btnregistrar_Click" 
                        Text="REGISTRAR" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btneliminar" runat="server" onclick="btneliminar_Click" 
                        Text="ELIMINAR" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
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
                            <asp:BoundField DataField="sigla" HeaderText="Sigla" />
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
