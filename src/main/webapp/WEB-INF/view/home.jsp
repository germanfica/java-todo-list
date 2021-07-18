<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.germanfica.util.Mappings" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List Application</title>
    <!-- Style Resources -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
    crossorigin="anonymous">
</head>
<body>
        <c:url var="itemsLink" value="${Mappings.ITEMS}"/>
        <h2><a href="${itemsLink}">Show Todo Items</a></h2>
</body>
</html>