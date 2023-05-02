﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="webreportsTIF.forms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <meta charset="utf-8" />
    <title></title>

    <link href="../estilos/Login.css" rel="stylesheet" />
</head>
<body>
      <div class="container">
        <h3>Iniciar sesión</h3>
        <div class="separator">
            <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"/>
            <hr/>
        </div>
        <form id="form1" runat="server" action="" method="">
            <div class="section-inputs">
                <label for="Usuario">
                    <span>Usuario</span>
                    <input id="Usuario" Usuario="Usuario"/>
                </label>
                <label for="Constraseña">
                    <span>Contraseña</span>
                    <input type="password" id="Contraseña" Contraseña="Contraseña"/>
                </label>
            </div>
            <button type="submit" class="submit-btn">Iniciar sesión</button>
        </form>
    </div>
    <footer>
        <p>Sistema de Reportes &copy; 2023</p>
    </footer>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>
