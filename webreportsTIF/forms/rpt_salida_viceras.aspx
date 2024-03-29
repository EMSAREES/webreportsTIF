﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_salida_viceras.aspx.cs" Inherits="webreportsTIF.forms.rpt_salida_viceras" %>
<!--<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Salida Viceras</title>

     <%--referencia de los estilos--%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
    <link href="../estilos/Salida_Viceras.css" rel="stylesheet" />
</head>
<body>

     <%----------BARRAS DE NAVEGACIÓN--------------------%>

    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Salida Viceras</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarColor01">
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

     <%--   parte donde seleciona la fecha inicial y final y los botones buscar, guardar y actualizar.--%>

      <form class="form">
          <div class="contenedor-inputs">
              <div class="contenedor-interno">
                <label for="Introductor" class="labels">Lote</label>
                <input type="text" id="Introductor" name="LoteId" class="input-15" required="required"/>
                <label for="fechaInicio" class="labels">Fecha Inicial</label>
                <input type="date" id="fechaInicio" name="FechaInicio" class="input-right" required="required"/>
                <label for="fechaFinal" class="labels">Fecha Final</label>
                <input type="date" id="fechaFinal" name="FechaFinal" class="input-final" required="required"/>

                  <%--  <button type="button" class="btn btn-info espa">Actualizar</button>--%>
                   <%--  <button type="button" class="btn btn-info espa">Buscar</button>--%>
                    <%--<button type="button" class="btn btn-warning espa">Imprimir</button>--%>

                <asp:Button ID="Button1" runat="server" Text="Actualizar" class="btn btn-info" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Buscar" class="btn btn-info" OnClick="Button2_Click"/>
                <asp:Button ID="Button3" runat="server" Text="Imprimir" class="btn btn-warning" OnClick="Button3_Click" />
                  
              </div>
          </div>
      </form>

     <%--Tabla--%>
         <%--Visible="false" Para que no se muestre un dato en el Grid--%>
         <div style="overflow-x: auto;">
            <asp:GridView ID="GVSALIDA_VICERAS"  runat="server" AutoGenerateColumns="false" class="table table-condensed table-hover" >
             <Columns>
                <asp:BoundField DataField="LOTE" HeaderText="LOTE" />
                <asp:BoundField DataField="MARCA" HeaderText="MARCA" />
                <asp:BoundField DataField="FECHA" HeaderText="FECHA" />
                <asp:BoundField DataField="HORA" HeaderText="HORA" />
                 </Columns>
                </asp:GridView>
         </div>

      <%--<div class="table-wrapper">
          <table class="table table-border table-hover" cellspacing="0" width="100%">
              <thead>
                <tr class="table-active">
                  <th scope="col">Lote</th>
                  <th scope="col">MARCA</th>
                  <th scope="col">FECHA</th>
                  <th scope="col">HORA</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                </tr>
              </tbody>
          </table>
      </div> --%>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <%-------------------------------------------------------------------------------------%>

       <!--Bostrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T  +ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>
