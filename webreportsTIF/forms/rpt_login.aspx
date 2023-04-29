<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_login.aspx.cs" Inherits="webreportsTIF.forms.rpt_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <meta charset="utf-8" />

    <link href="../estilos/Login.css" rel="stylesheet" />
</head>
<body>

     <div class="container">
        <h3>Iniciar sesión</h3>

        <div class="separator">
                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"/>
            <hr/>
        </div>
    </div>
    
    <form id="form1" runat="server">
         <div class="section-inputs">
            <label for="Usuario">
                <span>Usuario</span>
                <asp:TextBox ID="Usuario" Usuario="Usuario" runat="server"></asp:TextBox>
            </label>
            <label for="Constraseña">
                <span>Contraseña</span>
                 <asp:TextBox ID="Contraseña" Contraseña="Contraseña" runat="server" placeholder="Password"></asp:TextBox>
            </label>
         </div>

        <asp:Button ID="Button1" class="submit-btn"  runat="server" Text="Iniciar sesión" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
    

    <footer>
        <p>Sistema de Reportes &copy; 2023</p>
    </footer>

</body>
</html>
