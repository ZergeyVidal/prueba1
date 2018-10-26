<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String usuario=request.getParameter("txtemail");
        String password=request.getParameter("txtpassword");
        if (usuario.equalsIgnoreCase("admin@gmail.com")&& password.equals("admin") ) {
            HttpSession misesion=request.getSession(true); //crear sesion
        misesion.setAttribute("username", usuario); //darle nombre del usuario a la sesion
        misesion.setAttribute("password", password); //darle la clave a la sesion
        String usuarioSesion=(String)misesion.getAttribute("username"); //obtener el nombre de usuario de la sesion, el (string)es para parcearlo
        out.print(usuarioSesion);
        out.print("<br/>");
        out.print("<a href='.\\nuevoTipoUsuario.jsp'>Crear Nuevo Tipo</a>");
        out.print("<a href='.\\cerrar.jsp'>Cerrar sesion</a>");
        }else{
            out.print("usuario no existe");
        }
        %>
    </body>
</html>