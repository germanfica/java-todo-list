<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.germanfica.util.Mappings" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo Items</title>
    <!-- Style Resources -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
    crossorigin="anonymous">
</head>
<body>
  <c:url var="addUrl" value="${Mappings.ADD_ITEM}"/>
  <a href="${addUrl}" type="button" class="btn btn-primary btn-sm">New Item</a>

  <table class="table">
    <!-- Table header -->
    <caption><h2>Todo Items</h2></caption>
    <thead class="thead-dark">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Details</th>
        <th scope="col">Deadline</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
        <th scope="col">View Item</th>
      </tr>
    </thead>
    <!-- Table body -->
    <tbody>
      <c:forEach var="item" items="${todoData.items}">

      <c:url var="editUrl" value="${Mappings.ADD_ITEM}">
        <c:param name="id" value="${item.id}"/>
      </c:url>

      <c:url var="deleteUrl" value="${Mappings.DELETE_ITEM}">
        <c:param name="id" value="${item.id}"/>
      </c:url>

      <c:url var="viewUrl" value="${Mappings.VIEW_ITEM}">
        <c:param name="id" value="${item.id}"/>
      </c:url>

        <tr>
          <th scope="row"><c:out value="${item.id}"/></th>
          <td><c:out value="${item.title}"/></td>
          <td><c:out value="${item.details}"/></td>
          <td><c:out value="${item.deadline}"/></td>
          <td><a href="${editUrl}">Edit</a></td>
          <td><a href="${deleteUrl}">Delete</a></td>
          <td><a href="${viewUrl}">View</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>