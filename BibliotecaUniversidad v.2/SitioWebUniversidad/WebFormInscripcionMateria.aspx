<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormInscripcionMateria.aspx.cs" Inherits="SitioWebUniversidad.WebFormInscripcionMateria" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 24px;
        }
        .style3
        {
            width: 149px;
        }
        .style4
        {
            height: 24px;
            width: 149px;
        }
        .style5
        {
            width: 238px;
        }
        .style6
        {
            height: 24px;
            width: 238px;
        }
        .style7
        {
            width: 149px;
            height: 44px;
        }
        .style8
        {
            width: 238px;
            height: 44px;
        }
        .style9
        {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="3">
                    Gestion de Inscripcion de estudiantes a materias</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Codigo del Estudiante:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnbuscar" runat="server" Height="23px" 
                        onclick="btnbuscar_Click" Text="Buscar" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Detalle del estudiante:</td>
                <td class="style6">
                    <asp:TextBox ID="txtdetalle" runat="server" Height="97px" TextMode="MultiLine" 
                        Width="222px"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Sigla:</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="211px">
                    </asp:DropDownList>
                </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    Fecha:</td>
                <td class="style5">
                    <asp:TextBox ID="txtfecha" runat="server" Width="193px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/imagenes/calendar.JPG" onclick="ImageButton1_Click" 
                        style="width: 14px" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="#003399" Height="200px" 
                        onselectionchanged="Calendar1_SelectionChanged1" Visible="False" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="btnguardar" runat="server" Height="28px" Text="Guardar" 
                        Width="86px" onclick="btnguardar_Click" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
