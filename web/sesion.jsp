<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesion</title>
    </head>
    <body>
        <% 
            String usuario = request.getParameter("user");
            String contraseña = request.getParameter("pass");

    
            boolean credencialesCorrectas = usuario.equals("usuario") && contraseña.equals("contrasena");

            if (credencialesCorrectas) {
        
                response.sendRedirect("home.jsp");
            } else {
            
        %>
        <p>Usuario o contraseña incorrectos. Por favor, inténtalo nuevamente.</p>
        <% } %>

    </body>
</html>
