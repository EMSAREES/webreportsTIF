<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_velocidad.aspx.cs" Inherits="webreportsTIF.forms.rpt_velocidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../estilos/CanalesEstilos.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="../estilos/bootstrap.css" rel="stylesheet" />
    <link href="../estilos/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<%---------------------  --------------------------------------------------%>
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">CANALES DE INVENTARIO</a>
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
      <form class="form">
          <div class="contenedor-inputs">
              <div class="contenedor-interno">
                <label for="selectProducto" class="labels">Datos del Producto</label>
                <select class="form-select" id="selectProducto">
                <option value="1">Producto 1</option>
                <option value="2">Producto 2</option>
                <option value="3">Producto 3</option>
                <option value="4">Producto 4</option>
                <option value="5">Producto 5</option>
                </select>
                <label for="Introductor" class="labels">Datos Introductor</label>
                <input type="text" id="Introductor" name="IntroductorId" class="input-15" required="required"/>
                <input type="text" name="IntroductorNom" class="input-right" required="required"/>
                <button type="button" class="btn btn-success">Actualizar</button>
                <button type="button" class="btn btn-warning">Imprimir</button>
              </div>
          </div>
      </form>
<%--------------------------------------------------------------------------------------------------------------------------%>
      <div class="table-wrapper">
          <table class="table table-border table-hover" cellspacing="0" width="100%">
              <thead>
                <tr class="table-active">
                  <th scope="col">INTRODUCTOR</th>
                  <th scope="col">DESTINO</th>
                  <th scope="col">FECHA</th>
                  <th scope="col">LOTE</th>
                  <th scope="col">PESO</th>
                  <th scope="col">CONSEC</th>
                  <th scope="col">SERIE_ID</th>
                  <th scope="col">SEXO</th>
                  <th scope="col">MAYOR</th>
                  <th scope="col">VACIADA</th>
                  <th scope="col">KOSHER</th>
                  <th scope="col">DECOMISO</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                </tr>
              </tbody>
          </table>
      </div>
<%--------------------------------------------------------------------------------------------------------------------------%>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>