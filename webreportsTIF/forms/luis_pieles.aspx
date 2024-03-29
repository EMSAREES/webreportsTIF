﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="luis_pieles.aspx.cs" Inherits="webreportsTIF.forms.rpt_sacrificio" %>

<!--<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--referencia de los estilos--%>
    <link href="../estilos/bootstrap.css" rel="stylesheet" />
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
    <link href="../estilos/styloospieles.css" rel="stylesheet" />
    <%--<link href="../estilos/dsgridview.css" rel="stylesheet" />--%>
    
</head>
<body>

   <%----------BARRAS DE NAVEGACIÓN--------------------%>
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">PLANTA TIF</a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

          <div class="collapse navbar-collapse" id="navbarColor01" style="">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item" style="margin-left: 20px;">
              <a class="nav-link active" href="Menu.aspx">INICIO
                <span class="visually-hidden">(current)</span>
              </a>
            </li>
           </ul>
        </div>
      </div>
    </nav>
    
<%-------------------------------------------------------------------------------------%>


 <%--   parte donde seleciona la fecha inicial y final y los botones buscar, guardar y actualizar.--%>
     <form class="form" runat="server">
          <h2>PIELES</h2>
          <div  class="contenedor-inputs"> 
              <div class="divir1">
                    <label for="fechaInicio" class="labels">Fecha Inicial</label>
                    <input type="date" id="fechaInicio" name="FechaInicio" runat="server" class="input-right"/>
                    <label for="fechaFinal" class="labels">Fecha Final</label>
                    <input type="date" id="fechaFinal" name="FechaFinal"  runat="server" class="input-final"/>
               </div>
             
               <div class="contenedor-boton">
                    <asp:Button ID="btbuscar" runat="server" Text="Buscar" class="btn btn-info espa"  OnClick="btbuscar_Click"/>
                   <%--  <button type="button" class="btn btn-info espa">Buscar</button>--%>
                    <%--<button type="button" class="btn btn-warning espa">Imprimir</button>--%>
               
                    <asp:Button ID="Button1" runat="server" Text="Imprimir" type="button" class="btn btn-warning espa" OnClick="Button1_Click"/>
                    
               </div>
              
          </div>
         <%--Tabla--%>
         <%--Visible="false" Para que no se muestre un dato en el Grid--%>
         <div  style="overflow-x: auto;">
            <asp:GridView ID="GVSacrificio" class="table table-condensed table-hover" AutoGenerateColumns="false" runat="server" OnSelectedIndexChanged="GVSacrificio_SelectedIndexChanged" >
             <Columns>
       

                <asp:BoundField DataField="MARCA_CTE_INTR" HeaderText="MARCA_CTE_INTR" />
                <asp:BoundField DataField="FECHA" HeaderText="FECHA" />
                <asp:BoundField DataField="HORA" HeaderText="HORA" />
                <asp:BoundField DataField="LOTE" HeaderText="LOTE" />
                <asp:BoundField DataField="NOM_PROD" HeaderText="NOM_PROD" />
                <asp:BoundField DataField="PIEZAS" HeaderText="PIEZAS" />
                <asp:BoundField DataField="PESO" HeaderText="PESO"/>
                <asp:BoundField DataField="TARA" HeaderText="TARA"/>

                <%--<asp:BoundField DataField="ID_ESC" HeaderText="ID_ESC" Visible="false"/>
                <asp:BoundField DataField="ID_MOV" HeaderText="ID_MOV" Visible="false"/>
                <asp:BoundField DataField="ID_ALM" HeaderText="ID_ALM" Visible="false"/>
                <asp:BoundField DataField="FOLIO" HeaderText="FOLIO" Visible="false"/>
                <asp:BoundField DataField="ID_CTE_PROD" HeaderText="ID_CTE_PROD" Visible="false"/>
                <asp:BoundField DataField="ID_CTE_INTR" HeaderText="ID_CTE_INTR" Visible="false"/>
                <asp:BoundField DataField="MARCA_CTE_INTR" HeaderText="MARCA_CTE_INTR" Visible="false"/>
                <asp:BoundField DataField="ID_CTE_DEST" HeaderText="ID_CTE_DEST" Visible="false"/>
                <asp:BoundField DataField="MARCA_CTE_DEST" HeaderText="MARCA_CTE_DEST" Visible="false"/>
                <asp:BoundField DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" Visible="false"/>
                <asp:BoundField DataField="ID_ESD" HeaderText="ID_ESD" Visible="false"/>
                <asp:BoundField DataField="ID_PROD" HeaderText="ID_PROD" Visible="false"/>
                <asp:BoundField DataField="FECHA_ESD" HeaderText="FECHA_ESD" Visible="false"/>
                <asp:BoundField DataField="HORA_ESD" HeaderText="HORA_ESD" Visible="false"/>
                <asp:BoundField DataField="SERIE" HeaderText="SERIE" Visible="false"/>
                <asp:BoundField DataField="ID" HeaderText="ID" Visible="false"/>--%>
            
                <%--   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:Button ID="btimprimir2" runat="server" Text="Imprimir" />
                       </ItemTemplate>
                   </asp:TemplateField>--%>

                </Columns>
            </asp:GridView>
            
         </div>
      </form>


   
<%-------------------------------------------------------------------------------------%>

       <!--Bostrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T  +ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


</body>
</html>
