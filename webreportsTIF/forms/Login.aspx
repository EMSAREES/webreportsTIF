<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webreportsTIF.forms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../estilos/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
    <div class="container">
        <h3>Iniciar sesión</h3>
        <div class="separator">
            <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images">
            <hr>
        </div>
        <form action="" method="">
            <div class="section-inputs">
                <label for="Usuario">
                    <span>Usuario</span>
                    <asp:TextBox ID="usuario" runat="server"></asp:TextBox>
                </label>
                <label for="Constraseña">
                    <span>Contraseña</span>
                    <asp:TextBox ID="contraseña" runat="server" TextMode="Password"></asp:TextBox>
                </label>
                <asp:Button ID="Iniciar" runat="server" Text="Iniciar sesión" OnClick="Iniciar_Click"/>
            </div>
        </form>
    </div>
    <footer>
        <p>Sistema de Reportes &copy; 2023</p>
    </footer>
    </form>
</body>
</html>
