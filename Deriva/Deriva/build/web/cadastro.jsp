<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="java.util.List"%>
<%@page import="deriva.app.Storage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <form method="post" action="Cadastra">
        CADASTRO<br>
        <br>

        e-mail: <input name="email" type="text" size="30"><br />
        senha: <input name="senha" type="password" size="20"><br />
        nome: <input name="nome" type="text" size="20"><br />
        sobrenome: <input name="sobrenome" type="text" size="20"><br />
        data de nascimento: <input name="dtnasc" type="date" size="20"><br />
        <p align="center">
        <font face="Arial" size="2"><b>
        <input type="submit" value="Enviar">
        <%@include file="errorcode.jspf" %>
            </b></font>
        </p>
        </form>
    </center>
    </body>
</html>