%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_mermas.aspx.cs" Inherits="webreportsTIF.forms.rpt_mermas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
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
                <a class="nav-link active" href="#">INICIO
                  <span class="visually-hidden">(current)</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
<%--------------------------------------------------------------------------------------------------------------------------%>
<%-----------------------Form principal donde se ingresan los datos para la busqueda----------------------------------------%>

      <form class="form">
          <h2>CONTROL DE MERMAS</h2>
          <div class="contenedor-inputs">
              <div class="contenedores">
                  <label for="Introductor" class="labels">Introductor</label>
                  <input type="text" id="Introductor" name="IntroductorId" class="input-15" required="required"/>
                  <input type="text" name="IntroductorNom" class="input-right" required="required"/>
              </div>
              <div class="contenedores">
                  <label for="fechaInicio" class="labels">Fecha Inicial</label>
                  <input type="date" id="fechaInicio" name="FechaInicio" class="input-right" required="required"/>
                  <label for="fechaFinal" class="labels">Fecha Final</label>
                  <input type="date" id="fechaFinal" name="FechaFinal" class="input-final" required="required"/>
              </div>
              <div class="contenedores">
                  <button type="button" class="btn btn-success">Actualizar</button>
                  <button type="button" class="btn btn-info">Buscar</button>
                  <button type="button" class="btn btn-warning">Imprimir</button>
              </div>
          </div>
      </form>
<%--------------------------------------------------------------------------------------------------------------------------%>
<%-----------------------Tabla de representacion de los datos que seran el resultado de la busqueda-------------------------%>

          <div class="table-wrapper">
          <table class="table table-border table-hover" cellspacing="0" width="100%">
              <thead>
                <th scope="col>FOLIO</th>
                  <th scope="col">LOTE ORIGINAL</th>
                  <th scope="col">FECHA DE SALIDA</th>
                  <th scope="col">DIAS CUARTO</th>
                  <th scope="col">MARCA</th>
                  <th scope="col">PIEZAS FR</th>
                  <th scope="col">PESO CAL</th>
                  <th scope="col">PESO FRIO</th>
                  <th scope="col">% MERMA</th>
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
