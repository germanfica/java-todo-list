<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframwork.org/tags/form" %>
<%  page import="com.germanfica.util.AttributeNames" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Items</title>
    <!-- Style Resources -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
    crossorigin="anonymous">
</head>
<body>
    <form:form methods="POST" modelAttribute="${AttributeNames.TODO_ITEM}">
        
    </form:form>
</body>
</html>