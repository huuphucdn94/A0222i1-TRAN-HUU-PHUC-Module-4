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
    <h1>Display all product</h1>
</center>
<table class="table">
    <tr>
        <td>
            <a th:href="@{/product/list}">Back to list</a>
            <br>
            <a th:href="@{/product/create}">Add product</a>
        </td>
        <td>
            <form th:action="@{/product/search}" method="get">
                <input type="text" name="nameSearch" placeholder="Input name product">
                <input type="submit" value="search">
            </form>
        </td>
    </tr>
</table>
<div th:if="${mess}">
    <h3 th:text="${mess}" style="color: red"></h3>
    <br>
</div>
<table class="table table-dark table-striped" >
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Note</th>
        <th>Producer</th>
        <th>View</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>>
    <tbody th:each= "product, iterStat: ${productList}">
    <tr th:object="${product}">
        <td th:text="*{id}"></td>
        <td th:text="*{name}"></td>
        <td th:text="*{price}"></td>
        <td th:text="*{note}"></td>
        <td th:text="*{producer}"></td>
        <td>
            <a th:href="@{/product/view/{id}(id=*{id})}">View</a>
        </td>
        <td>
            <a th:href="@{/product/edit/{id}(id=*{id})}">Edit</a>
        </td>
        <td>
            <!--                    <a th:href="@{/product/delete/{id}(id=*{id})}">Delete</a>-->

            <a th:onclick="|deleteInfo(*{id}, '*{name}')|" data-toggle="modal" data-target="#exampleModal">Delete</a>
        </td>
    </tr>
    </tbody>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form action="/product/delete" method="get">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input hidden name="id" id="id">
                    <span>Do you want delete </span><span id="deleteName"></span><span>?</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Yes</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    function deleteInfo(id,name) {
        document.getElementById("id").value=id;
        document.getElementById("deleteName").innerText=name;
    }
</script>
</body>
</html>
