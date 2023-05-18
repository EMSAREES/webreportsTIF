<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_velocidad.aspx.cs" Inherits="webreportsTIF.forms.rpt_velocidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="../estilos/bootstrap.css" rel="stylesheet" />
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
    <link href="../estilos/velocidadstyle.css" rel="stylesheet" />
</head>
<body>
<%--------------------- Barra superior que indica la busqueda del reporte --------------------------------------------------%>
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">PLANTA TIF</a>
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
<%--------------------------------------------------------------------------------------------------------------------------%>
<%-----------------------Form principal donde se ingresan los datos para la busqueda----------------------------------------%>
      <form class="form" runat="server">
          <h2>Velocidad de línea de producción</h2>
          <div class="contenedor-inputs">
              <div class="contenedores">
                  <label for="fechaInicio" class="labels">Fecha Inicial</label>
                  <input type="date" id="fechaInicio" name="FechaInicio" class="input-right" required="required" runat="server"/>
                  <label for="fechaFinal" class="labels">Fecha Final</label>
                  <input type="date" id="fechaFinal" name="FechaFinal" class="input-final" required="required" runat="server"/>
                  <label for="dia" class="labels">Día</label>
                  <input type="text" id="dia" name="consecutivo_dia" class="input-final" style="width:100px" required="required" runat="server"/>
              </div>
              <div class="contenedores">
                  <asp:Button ID="btnbuscar" runat="server" Text="Buscar" class="btn btn-info espa" OnClick="btnbuscar_Click"/>
                  <asp:Button ID="btnimprimir" runat="server" Text="Imprimir" class="btn btn-warning" OnClick="btnimprimir_Click"/>
              </div>
<%--------------------------------------------------------------------------------------------------------------------------%>
<%----------------------------------------- GridView donde se cargan los datos ---------------------------------------------%>
          </div>
          <div style="overflow-x: auto;">
          <asp:GridView ID="GVvelocidad"  class="table table-condensed table-hover" runat="server" AutoGenerateColumns="false">
              <Columns>
                  <asp:BoundField DataField="ID_ESC" HeaderText="ID_ESC" />
                  <asp:BoundField DataField="ID_CTE" HeaderText="ID_CTE" />
                  <asp:BoundField DataField="ID_PROD" HeaderText="ID_PROD" />
                  <asp:BoundField DataField="CONSECUTIVO_DIA" HeaderText="CONSECUTIVO_DIA" />
                  <asp:BoundField DataField="CONSECUTIVO_LOTE" HeaderText="CONSECUTIVO_LOTE" />
                  <asp:BoundField DataField="PIEZAS" HeaderText="PIEZAS" />
                  <asp:BoundField DataField="PESO" HeaderText="PESO" />
                  <asp:BoundField DataField="FECHA_INICIAL" HeaderText="FECHA_INICIAL" />
                  <asp:BoundField DataField="FECHA_FINAL" HeaderText="FECHA_FINAL" />
                  <asp:BoundField DataField="DIFERENCIA_HORAS" HeaderText="DIFERENCIA_HORAS" />
              </Columns>
          </asp:GridView>
          </div>
<%--------------------------------------------------------------------------------------------------------------------------%>
      </form>
</body>
</html>