<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_sacrificio.aspx.cs" Inherits="webreportsTIF.forms.rpt_sacrificio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--referencia de los estilos--%>
  <%--  <link href="../estilos/bootstrap.css" rel="stylesheet" />
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
    <link href="../estilos/dsgridview.css" rel="stylesheet" />
    <link href="../estilos/velocidadstyle.css" rel="stylesheet" />--%>

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="../estilos/bootstrap.css" rel="stylesheet" />
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
    <link href="../estilos/velocidadstyle.css" rel="stylesheet" />
    <link href="../estilos/dsgridview.css" rel="stylesheet" />

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
              <a class="nav-link active" href="#">INICIO
                <span class="visually-hidden">(current)</span>
              </a>
            </li>
           </ul>
        </div>
      </div>
    </nav>
    
<%-------------------------------------------------------------------------------------%>


 <%--   parte donde seleciona la fecha inicial y final y los botones buscar, guardar y actualizar.--%>

     <form class="form">
          <h1>SACRIFICIO</h1>
          <div  class="contenedor-inputs"> 
              
                    <label for="fechaInicio" class="labels">Fecha Inicial</label>
                    <input type="date" id="fechaInicio" name="FechaInicio" class="input-right" required="required"/>
                    <label for="fechaFinal" class="labels">Fecha Final</label>
                    <input type="date" id="fechaFinal" name="FechaFinal" class="input-final" required="required"/>
                 <div class="contenedor-boton">
                    <button type="button" class="btn btn-info">Buscar</button>
                    <button type="button" class="btn btn-success">Actualizar</button>
                    <button type="button" class="btn btn-warning">Imprimir</button>
                </div>
          </div>
      </form>

<%-------------------------------------------------------------------------------------%>


 <%--Tabla--%>
    <div class="table-wrapper">
    <table class="table table-border table-hover" cellspacing="0" width="100%">
        <thead>
          <tr class="table-active">
            <th scope="col">CONS. DIA</th>
            <th scope="col">LOTE</th>
            <th scope="col">PRODUCTO</th>
            <th scope="col">INTRODUCION</th>
            <th scope="col">DESTINO</th>
            <th scope="col">CONS. LOTE</th>
            <th scope="col">PESO 1</th>
            <th scope="col">PESO 2</th>
            <th scope="col">DIF PESO</th>
            <th scope="col">HORA</th>
            <th scope="col">SERIE</th>
            <th scope="col">ID</th>
            <th scope="col">SEXO</th>
            <th scope="col">MAYOR</th>
            <th scope="col">VACIADA 1</th>
            <th scope="col">VACIADA 2</th>
            <th scope="col">VACIADA 3</th>
          </tr>
        </thead>
        <tbody>
          <tr>
       
          </tr>
        </tbody>
      </table>
    </div>
<%-------------------------------------------------------------------------------------%>

       <!--Bostrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T  +ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>




    <form id="form1" runat="server">
        <div>
        </div>
    </form>


</body>
</html>
