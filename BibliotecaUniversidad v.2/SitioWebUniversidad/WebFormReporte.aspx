<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormReporte.aspx.cs" Inherits="SitioWebUniversidad.WebFormReporte" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
            width: 402px;
        }
        .style3
        {
            width: 313px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Buscar Evaluacion" />
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Buscar Notas Finales" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <rsweb:ReportViewer ID="ReportViewer3" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="301px" InteractiveDeviceInfos="(Colección)" 
                        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="726px">
                        <LocalReport ReportPath="rptEvaluacion.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetData" 
                        TypeName="SitioWebUniversidad.DataSet3TableAdapters.DataTable1TableAdapter">
                    </asp:ObjectDataSource>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <rsweb:ReportViewer ID="ReportViewer4" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="331px" InteractiveDeviceInfos="(Colección)" 
                        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="723px">
                        <LocalReport ReportPath="rptMateria.rdlc">
                        </LocalReport>
                    </rsweb:ReportViewer>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="SitioWebUniversidad.DataSet2TableAdapters.DataTable1TableAdapter">
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    </td>
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
