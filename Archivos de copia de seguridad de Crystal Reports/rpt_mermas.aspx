<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_mermas.aspx.cs" Inherits="webreportsTIF.forms.rpt_mermas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>--%>
    <link href="../estilos/bootstrap.css" rel="stylesheet" />
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
    <link href="../estilos/Stylemermas.css" rel="stylesheet" />

</head>
<body>
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
          <h2>CONTROL DE MERMAS</h2>
          <div class="contenedor-inputs">
              <div class="contenedores">
                  <label for="Introductor" class="labels">Introductor</label>
                  <input type="text" id="Introductor" name="IntroductorId" class="input-15" runat="server"/>
                  <input type="text" id="IntroductorNom" name="IntroductorNom" class="input-right" runat="server"/>
              </div>
              <div class="contenedores">
                  <label for="fechaInicio" class="labels">Fecha Inicial</label>       
                  <input type="date" id="fechaInicio" name="FechaInicio" runat="server" class="input-right"/>
                  <label for="fechaFinal" class="labels">Fecha Final</label>
                  <input type="date" id="fechaFinal" name="FechaFinal"  runat="server" class="input-final"/>
              </div>
              <div class="contenedores">
                  <%--<button type="button" class="btn btn-info">Buscar</button>--%>
                  <%--<button type="button" class="btn btn-warning">Imprimir</button>--%>
                  
                  <asp:Button ID="Button1" runat="server" Text="Buscar" class="btn btn-info" OnClick="Button1_Click"/>
                  <asp:Button ID="Button2" runat="server" Text="Imprimir" class="btn btn-warning" OnClick="Button2_Click" />
                  
              </div>
          </div>
             <%--Tabla--%>
         <%--Visible="false" Para que no se muestre un dato en el Grid--%>
         <div  style="overflow-x: auto;">
            <asp:GridView ID="GVMermas"  runat="server" AutoGenerateColumns="false" class="table table-condensed table-hover" >
             <Columns>
                <asp:BoundField DataField="LOTE" HeaderText="LOTE" />
                <asp:BoundField DataField="FECHA" HeaderText="FECHA" />
                <asp:BoundField DataField="MARCA" HeaderText="MARCA" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" />
                <asp:BoundField DataField="PORCENTAJEGRASA" HeaderText="PORCENTAJEGRASA"/>
                <asp:BoundField DataField="PORCENTAJECARNE" HeaderText="PORCENTAJECARNE"/>
                <asp:BoundField DataField="TOTALPESOHUESO" HeaderText="TOTALPESOHUESO" />
                <asp:BoundField DataField="TOTALPESOCARNE" HeaderText="TOTALPESOCARNE" />
                <asp:BoundField DataField="TOTALPESOSINCARNE" HeaderText="TOTALPESOSINCARNE" />
                <asp:BoundField DataField="OBSERVACIONES" HeaderText="OBSERVACIOBNES" />
                <asp:BoundField DataField="TOTALGRASA" HeaderText="TOTALGRASA" />
                <asp:BoundField DataField="TOTALCARNESGRASA" HeaderText="TOTALCARNESGRASA" />
                <asp:BoundField DataField="TOTALGRASASCARNE" HeaderText="TOTALGRASASCARNE" />
            </Columns>
        </asp:GridView>
         </div>
      </form>
     <!--Bostrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T  +ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
