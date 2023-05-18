<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_Viceras.aspx.cs" Inherits="webreportsTIF.forms.rpt_Viceras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Viceras</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="../css/stylebootstrap.min.css" rel="stylesheet" />
    <link href="../css/styleviceras.css" rel="stylesheet" />
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Viceras</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarColor01">
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

      <form class="form">
          <div class="contenedor-inputs">
              <div class="contenedor-interno">
                <label for="Introductor" class="labels">Introductor</label>
                <input type="text" id="Introductor" name="IntroductorId" class="input-15" required="required"/>
                <input type="text" name="IntroductorNom" class="input-right" required="required"/>
                <label for="fechaInicio" class="labels">Fecha Inicial</label>
                <input type="date" id="fechaInicio" name="FechaInicio" class="input-right" required="required"/>
                <label for="fechaFinal" class="labels">Fecha Final</label>
                <input type="date" id="fechaFinal" name="FechaFinal" class="input-final" required="required"/>
                <button type="button" class="btn btn-success">Actualizar</button>
                <button type="button" class="btn btn-info">Buscar</button>
                <button type="button" class="btn btn-warning">Imprimir</button>
              </div>
          </div>
      </form>

      <div class="table-wrapper">
          <table class="table table-border table-hover" cellspacing="0" width="100%">
              <thead>
                <tr class="table-active">
                  <th scope="col">FOLIO</th>
                  <th scope="col">Marca</th>
                  <th scope="col">Introductor</th>
                  <th scope="col">Fecha</th>
                  <th scope="col">Hora</th>
                  <th scope="col">Lote</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                </tr>
              </tbody>
          </table>
      </div>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
