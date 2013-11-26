<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteDetalleNostas.aspx.cs" Inherits="SitioWebUniversidad.Paginas.ReporteDetalleNostas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link href="../Css/Trabajo final.css" rel="stylesheet" type="text/css" media="screen" />
<iframe src="../WebFormReporte.aspx" width="100%" height="800px">
</iframe>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContent" runat="server">
<div id="menu"><!-- InstanceBeginEditable name="EditRegion2" -->
					  <ul>
                        <li><a href="../Default.aspx">Inicio</a></li>
					    <li><a href="Estudiante.aspx">Estudiante</a></li>
					    <li><a href="Materia.aspx">Materia</a></li>
                        <li><a href="Carrera.aspx">Carrera</a></li>
                        <li><a href="WebDetalleEvaluacion.aspx">Evaluaciones</a></li>
                        <li class="current_page_item"><a href="ReporteDetalleNostas.aspx">Detalle de Notas</a></li>
				    </ul>
					<!-- InstanceEndEditable -->
                    </div>
</asp:Content>
