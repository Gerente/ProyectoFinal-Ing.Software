<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormDetalleEvaluacion.aspx.cs" Inherits="SitioWebUniversidad.WebFormDetalleEvaluacion" %>

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
            width: 312px;
        }
        .style3
        {
            width: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    Gestion de Evaluaciones</td>
            </tr>
            <tr>
                <td class="style3">
                    DATOS DE LA MATERIA</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Codigo de la materia:</td>
                <td class="style2">
                    <asp:TextBox ID="txtcodmateria" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnBuscarMateria" runat="server" 
                        onclick="btnBuscarMateria_Click" Text="Buscar Materia" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Detalle de Materia</td>
                <td class="style2">
                    <asp:TextBox ID="txtdetallemateria" runat="server" Height="80px" 
                        TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Estudiantes</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="paterno" HeaderText="Paterno" />
                            <asp:BoundField DataField="materno" HeaderText="Materno" />
                            <asp:BoundField DataField="genero" HeaderText="Genero" />
                            <asp:TemplateField HeaderText="Nota">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtnota" runat="server"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Detalle de Evaluacion</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Numero:</td>
                <td class="style2">
                    <asp:TextBox ID="txtnumero" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Nombre:</td>
                <td class="style2">
                    <asp:TextBox ID="txtnombre" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Nota Maxima:</td>
                <td class="style2">
                    <asp:TextBox ID="txtpuntaje" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Detalle:</td>
                <td class="style2">
                    <asp:TextBox ID="txtdetalle" runat="server" Height="44px" TextMode="MultiLine" 
                        Width="245px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnguardarnotas" runat="server" onclick="btnguardarnotas_Click" 
                        Text="Guardar Notas" />
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
