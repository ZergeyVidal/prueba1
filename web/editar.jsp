<%@page import="java.util.ArrayList"%>
<%@page import="clases.tipoUsuario"%>
<%@page import="clases.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>JSP Page</title></head>
    <body>
        <%
String id=request.getParameter("id");
String tipo=request.getParameter("id");
        out.print("ID: "+id);
         conexion cn=new conexion();
       ArrayList<tipoUsuario> tipos=cn.verTipoUsuarioById(id);
       
       out.print("<form method='POST' action='editarTipoUsuario.jsp'>"); 
       out.print("Tipo:<input type=\"text\" name=\"txtTipo\" value='"+tipos.get(0).getTipo()+"'><br/> ");     
       out.print("Descripcion:<input type=\"text\" name=\"txtDescripcion\"value='"+tipos.get(0).getDescripcion()+"'> <br/>"); 
        out.print("<input type=\"hidden\" name=\"hdnId\" value='"+tipos.get(0).getId() +"'><br/> ");     
       out.print("<input type=\"submit\" name=\"btnEditar\">"); 
       out.print("</form>"); 
                 %>
    </body>
</html>
