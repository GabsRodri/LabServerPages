<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Entry Form</title>
</head>
<body>
    <h1>Entry Form</h1>
    <form action="response.jsp" method="GET" name="Name Input Form">
        Enter your name: <input type="text" name="name" /><br/>
        Enter your birth date (YYYY-MM-DD): <input type="date" name="birthDate" /><br/>
        <input type="submit" value="OK" />
    </form>
</body>
</html>