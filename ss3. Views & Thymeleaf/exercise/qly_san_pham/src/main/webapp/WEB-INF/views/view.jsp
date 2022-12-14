<%--
  Created by IntelliJ IDEA.
  User: Phuc
  Date: 10/10/2022
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<center>
    <h1>Detail product</h1>
</center>
<!--/*@thymesVar id="product" type=""*/-->
<table border="1" th:object="${product}" class="table">
    <tr>
        <th >ID</th>
        <td th:text="*{id}"></td>
    </tr>
    <tr>
        <th>Name</th>
        <td th:text="*{name}"></td>
    </tr>
    <tr>
        <th>Price</th>
        <td th:text="*{price}"></td>
    </tr>
    <tr>
        <th>Description</th>
        <td th:text="*{note}"></td>
    </tr>
    <tr>
        <th>Factory</th>
        <td th:text="*{producer}"></td>
    </tr>
</table>
</body>
</html>
