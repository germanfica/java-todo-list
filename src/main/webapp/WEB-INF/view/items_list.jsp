<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <table class="table">
    <!-- Table header -->
    <caption><h2>Todo Items</h2></caption>
    <thead class="thead-dark">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Details</th>
        <th scope="col">Deadline</th>
      </tr>
    </thead>
    <!-- Table body -->
    <tbody>
      <c:forEach var="item" items="${todoData.items}">
        <tr>
          <th scope="row">1</th>
          <td><c:out value="${item.title}"/></td>
          <td><c:out value="${item.details}"/></td>
          <td><c:out value="${item.deadline}"/></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>