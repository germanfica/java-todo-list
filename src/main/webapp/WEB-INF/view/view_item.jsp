<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.germanfica.util.Mappings" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo Item</title>
    <!-- Style Resources -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
    crossorigin="anonymous">
</head>
<body>
  <c:url var="itemsUrl" value="${Mappings.ITEMS}"/>
  <a href="${itemsUrl}" type="button" class="btn btn-primary btn-sm">Return to the list of items</a>

  <caption><h2>Todo Item</h2></caption>

  <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">ID</h5>
        </div>
        <p class="mb-1"><c:out value="${todoItem.id}"/></p>
    </a>

    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">Title</h5>
        </div>
        <p class="mb-1"><c:out value="${todoItem.title}"/></p>
    </a>

    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">Details</h5>
        </div>
        <p class="mb-1"><c:out value="${todoItem.details}"/></p>
    </a>

    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">Deadline</h5>
        </div>
        <p class="mb-1"><c:out value="${todoItem.deadline}"/></p>
    </a>
  </div>
</body>
</html>