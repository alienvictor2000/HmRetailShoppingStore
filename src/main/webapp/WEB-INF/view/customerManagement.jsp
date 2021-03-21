<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<%@include file="/WEB-INF/view/templete/header.jsp"%>

<main>
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container-wrapper">

        <!-- Three columns of text below the carousel -->
        <div class="container">

            <div class="page-header">
                <h1>Customer Management Page</h1>
                <p class="lead">This is the customer management page.</p>
            </div>

            <table class="table table-striped table-hover">
                <tr class="bg-success">
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Username</th>
                    <th>Enabled</th>
                </tr>
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td>${customer.customerName}</td>
                        <td>${customer.customerEmail}</td>
                        <td>${customer.customerPhone}</td>
                        <td>${customer.username}</td>
                        <c:if test="${customer.enabled == true}">
                            <td><i class="bi bi-check-circle-fill"></i></td>
                        </c:if>
                        <c:if test="${customer.enabled == false}">
                            <td><i class="bi bi-x-circle-fill"></i></td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
<%@include file="/WEB-INF/view/templete/footer.jsp"%>
