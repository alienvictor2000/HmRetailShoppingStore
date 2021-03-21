
<%--
  Created by IntelliJ IDEA.
  User: Huy
  Date: 3/8/2021
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>My H&M Fashion Store</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/">

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!-- Angular JS-->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>

    <!-- Favicons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">

    <meta name="theme-color" content="#7952b3">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">

</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">H&M Retail Store</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/"/> ">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="<c:url value="/product/productList/all"/>">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="<c:url value="/about"/> ">Contact</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><a class="nav-link"  >Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                        <li><a class="nav-link"  href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
                        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            <li><a class="nav-link"  href="<c:url value="/customer/cart"/>">Cart</a></li>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                            <li><a class="nav-link"  href="<c:url value="/admin"/>">Admin</a></li>
                        </c:if>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li>
                            <a class="nav-link" href="<c:url value="/login"/> " tabindex="-1">Login</a>
                        </li>
                        <li>
                            <a class="nav-link" href="<c:url value="/register"/> " tabindex="-1">Register</a>
                        </li>
                    </c:if>
                </ul>
<%--                <form class="d-flex">--%>
<%--                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--                    <button class="btn btn-outline-success" type="submit">Search</button>--%>
<%--                </form>--%>
            </div>
        </div>
    </nav>
</header>
