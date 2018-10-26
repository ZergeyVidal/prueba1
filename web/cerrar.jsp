<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          HttpSession misesion=request.getSession(true); 
        String usuarioSesion=(String)misesion.getAttribute("username"); 
        if (misesion!=null) {
        misesion.invalidate();
        out.print("Sesion cerrada para: "+usuarioSesion);
            }else{
            out.print("Sesion cerrada");
        }
      %>
      
    </body>
</html>
