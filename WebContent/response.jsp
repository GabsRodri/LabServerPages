<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.format.DateTimeParseException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="mybean" class="org.mypackage.hello.NameHandler" scope="session" />
<jsp:setProperty name="mybean" property="name" />
<%
    String birthDateParam = request.getParameter("birthDate");
    if (birthDateParam != null && !birthDateParam.isEmpty()) {
        try {
            LocalDate birthDate = LocalDate.parse(birthDateParam, DateTimeFormatter.ISO_LOCAL_DATE);
            mybean.setBirthDate(birthDate);
        } catch (DateTimeParseException e) {
            // Manejar error de formato si es necesario
        }
    }
%>

<%
    java.util.Calendar cal = java.util.Calendar.getInstance();
    int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
    String saludo = "";
    if (hour >= 6 && hour < 12) {
        saludo = "Buenos días";
    } else if (hour >= 12 && hour < 20) {
        saludo = "Buenas tardes";
    } else {
        saludo = "Buenas noches";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Respuesta</title>
</head>
<body>
    <h1><%= saludo %>, <jsp:getProperty name="mybean" property="name" />!</h1>
    <p>Tu edad es: <%= mybean.getAge() %> años.</p>
</body>
</html>