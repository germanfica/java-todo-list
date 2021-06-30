<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.germanfica.util.AttributeNames" %>
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
      <div class="form-group">
        <label>Id</label>
        <form:input path="id" class="form-control" disabled="true" />
      </div>
      <div class="form-group">
        <label>Title</label>
        <form:input path="title" class="form-control" />
      </div>
      <div class="form-group">
        <label>Deadline</label>
        <form:input path="deadline" class="form-control" />
      </div>
      <div class="form-group">
        <label>Details</label>
        <form:textarea path="details" class="form-control" />
      </div>
      <input type="submit" value="Submit" class="btn btn-primary" />
    </form:form>
</body>
</html>