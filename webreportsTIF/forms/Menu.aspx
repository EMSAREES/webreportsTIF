<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="webreportsTIF.forms.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../estilos/Menustyle.css" rel="stylesheet" />
</head>
    <script type="text/javascript">
    function MostrarVentanaEmergente() {
        var resultado = confirm("¿Deseas continuar?");

        if (resultado) {

            window.location.href = "Login.aspx";

        } else {

        }
    }
    </script>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
        <h1>Bienvenido</h1>
    </header>
    <div id="container">
        <nav>
            <ul>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="rpt_canalesInventario.aspx">Canales de inventario</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="rpt_mermas.aspx">Mermas</a></li>   
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="rpt_sacrificio.aspx">Sacrificio</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="rpt_salida_viceras.aspx">Salida de viceras</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="rpt_velocidad.aspx">Velocidad</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="#">Reporte</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="#">Reporte</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="#">Reporte</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="#">Reporte</a></li>  
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="#">Reporte</a></li>
                <li><img id="img" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0SvLw_FYzTIhrxLSwugN2QHaHa%26pid%3DApi&f=1&ipt=017818c1a192241f4d4f13ef5f64c12c65c8363b2ce35023dffe358072e8618c&ipo=images"><a href="#">Reporte</a></li>
            </ul>
        </nav>
    </div>
    <%--<button id="exitbutton" onclick="window.close()">Salir</button>--%>
    <asp:Button ID="exitbutton" runat="server" Text="Salir" OnClick="exitbutton_Click" />
    <footer>
        <p>Sistema de Reportes &copy; 2023</p>
    </footer>
        </div>
    </form>
</body>
</html>
