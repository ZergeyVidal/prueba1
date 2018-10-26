<%@page import="clases.conexion"%>
<%@page import="clases.tipoUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>JSP Page</title></head>
    <body>
       <%
       conexion cn=new conexion();
       ArrayList<tipoUsuario> tipos=cn.verTipoUsuario();
       out.print("<table border='2'>");
       out.print("<tr>");
       out.print("<td>");
       out.print("Tipo");
       out.print("</td>");
       out.print("<td>");
       out.print("Descripción");
       out.print("</td>");
       out.print("<td>");
       out.print("Acciones");
       out.print("</td>");
       out.print("</tr>");
       for (int x=0;x<tipos.size();x++) {
            out.print("<tr>");
            out.print("<td>");
            out.print(tipos.get(x).getTipo());
            out.print("</td>");
            out.print("<td>");
            out.print(tipos.get(x).getDescripcion());
            out.print("</td>");
            out.print("<td>");
            out.print("<a href=\"editar.jsp?id="+tipos.get(x).getId()+"\">Editar</a>");
            out.print("</td>");
            out.print("</tr>");    
       }
       out.print("</table>");
       %>
    </body>
</html>
