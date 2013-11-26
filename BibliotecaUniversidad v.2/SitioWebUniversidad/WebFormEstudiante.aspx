<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormEstudiante.aspx.cs" Inherits="SitioWebUniversidad.WebFormEstudiante" %>

<%@ Register src="EstudianteNum.ascx" tagname="EstudianteNum" tagprefix="uc1" %>
<%@ Register src="EstudianteLetras.ascx" tagname="EstudianteLetras" tagprefix="uc2" %>
<%@ Register src="Estudiante.ascx" tagname="Estudiante" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style3
        {
            text-align: left;
        }
        .style12
        {
        }
        .style13
        {
            width: 1516px;
        }
        .style14
        {
            width: 27%;
        }
        .style15
        {
            width: 144px;
        }
        .style16
        {
            width: 239px;
        }
        .style17
        {
            width: 456px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style3" colspan="4">
                    Registro de Estudiantes</td>
            </tr>
            <tr>
                <td class="style16">
                    Nro de Registro:</td>
                <td class="style13" colspan="2">
                    <uc1:EstudianteNum ID="EstudianteNum1" runat="server" />
                </td>
                <td class="style14">
                    <asp:Button ID="btnbuscar" runat="server" onclick="btnbuscar_Click" 
                        Text="BUSCAR" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Nombre:</td>
                <td class="style13" colspan="2">
                    <uc2:EstudianteLetras ID="EstudianteLetras1" runat="server" />
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Apellido Paterno:</td>
                <td class="style13" colspan="2">
                    <uc2:EstudianteLetras ID="EstudianteLetras2" runat="server" />
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Apellido Materno</td>
                <td class="style13" colspan="2">
                    <uc2:EstudianteLetras ID="EstudianteLetras3" runat="server" />
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Genero:</td>
                <td class="style15">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="100px">
                        <asp:ListItem>Femenino</asp:ListItem>
                        <asp:ListItem>Masculino</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="RadioButtonList1" ErrorMessage="Ingrese genero" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Correo:</td>
                <td class="style13" colspan="2">
                    <uc3:Estudiante ID="Estudiante1" runat="server" />
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Telefono:</td>
                <td class="style13" colspan="2">
                    <uc1:EstudianteNum ID="EstudianteNum2" runat="server" />
                </td>
                <td class="style14">
                    <asp:Button ID="Atras" runat="server" Height="33px" 
                        PostBackUrl="~/WebFormEstudiante.aspx" Text="Button" Width="112px" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Carrera:</td>
                <td class="style13" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Button ID="btnmodificar" runat="server" onclick="btnmodificar_Click" 
                        Text="MODIFICAR" />
                </td>
                <td class="style13" colspan="2">
                    <asp:Button ID="btnregistrar" runat="server" onclick="btnregistrar_Click" 
                        Text="REGISTRAR ESTUDIANTE" Width="188px" />
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </td>
                <td class="style14">
                    <asp:Button ID="btneliminar" runat="server" onclick="btneliminar_Click" 
                        Text="ELIMINAR" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style13" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        style="margin-right: 11px; margin-left: 33px;" />
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="codigo" HeaderText="Nro. de Registro" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="paterno" HeaderText="Paterno" />
                            <asp:BoundField DataField="materno" HeaderText="Materno" />
                            <asp:BoundField DataField="genero" HeaderText="Genero" />
                            <asp:BoundField DataField="correo" HeaderText="Correo" />
                            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                            <asp:BoundField DataField="codigoc" HeaderText="Carrera" />
                            <asp:CommandField HeaderText="Seleccionar" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style12" colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
