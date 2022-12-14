<%--
  Created by IntelliJ IDEA.
  User: Phuc
  Date: 10/10/2022
  Time: 1:03 PM
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
<CENTER>
    <h1>Create new Student</h1>
</CENTER>
<a th:href="@{/product/list}">Back to list</a>
<form th:action="@{/product/edit}" method="post" th:object="${productList}">
    <input type="hidden" th:field="*{id}">
    <table border="1" class="table">
        <tr>
            <td>Name</td>
            <td><label>
                <input type="text" th:field="*{name}">
            </label></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><label>
                <input type="text" th:field="*{price}">
            </label></td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td><label>
                <input type="text" th:field="*{note}">
            </label></td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td><label>
                <input type="text" th:field="*{producer}">
            </label></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Edit"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
