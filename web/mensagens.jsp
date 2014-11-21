<%-- 
    Document   : mensagens
    Created on : 24/10/2014, 22:32:35
    Author     : Cliente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String m = (String) request.getAttribute("m");
            %>
            <p> 
                <%= m %> 
            </p>
            <!--
           
            -->
    </body>
</html>
