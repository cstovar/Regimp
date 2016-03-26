<%-- 
    Document   : resultado
    Created on : Mar 15, 2016, 5:59:13 PM
    Author     : crist
--%>

<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Correo Electronico</title>
    </head>
    <body>
        <%
            Email email = new Email();
            String de = request.getParameter("de");
            String clave = request.getParameter("clave");
            String para = request.getParameter("para");
            String mensaje = request.getParameter("mensaje");
            String asunto = request.getParameter("asunto");
           
            boolean resultado = email.enviarCorreo(de, clave, para, mensaje, asunto);
            
            if (resultado) {
              out.print("correo correctamente enviado " + "\n \n" + "<a href'index.jsp'> Volver al index </a>");
                } else {
              out.print("correo no enviado " + "\n \n " + " <a href'index.jsp'> Volver al index </a>");
            }
        %>
    </body>
</html>
