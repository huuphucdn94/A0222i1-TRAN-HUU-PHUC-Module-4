<%--
  Created by IntelliJ IDEA.
  User: Phuc
  Date: 10/10/2022
  Time: 1:01 PM
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
<h1 style="align-content: center">Create new Student</h1>
<a th:href="@{/product/list}">Back to list</a>
<form th:action="@{/product/create}" method="post" th:object="${product}">
    <table class="table" border="1">
        <tr>
            <td>ID</td>
            <td><input type="text" th:field="*{id}"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" th:field="*{name}"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" th:field="*{price}"></td>
        </tr>
        <tr>
            <td>Note</td>
            <td><input type="text" th:field="*{note}"></td>
        </tr>
        <tr>
            <td>Producer</td>
            <td><input type="text" th:field="*{producer}"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Create" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
