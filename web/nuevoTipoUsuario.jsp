<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="GuardarTipoUsuario.jsp">
            Tipo:<input type="text" name="txtTipo"><br/>
            Descripcion:<input type="textarea" name="txtDescripcion"><br/>
            <input type="submit" name="btnSubmit" value="Guardar">
            
            
        </form>
    </body>
</html>
