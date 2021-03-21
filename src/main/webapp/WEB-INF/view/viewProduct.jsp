<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/templete/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product!</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/img/${product.productId}.png" /> " alt="image"
                         style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.prince} USD</h4>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList/all" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" />" class="btn btn-light">Back</a>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <a href="<c:url value="/login"/> " class="btn btn-warning btn-large"><span
                                    class="bi bi-cart-plus-fill"></span> Order Now</a>
                            <a href="<spring:url value="/customer/cart"/>"
                               class="btn btn-dark"><span class="bi bi-arrow-right-circle-fill"></span> View Cart</a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <a href="#" class="btn btn-warning btn-large"
                           ng-click="addToCart('${product.productId}')"><span
                                class="bi bi-cart-plus-fill"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart"/>"
                           class="btn btn-dark"><span class="bi bi-arrow-right-circle-fill"></span> View Cart</a>
                        </c:if>
                    </p>
                </div>
            </div>
        </div>



<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/view/templete/footer.jsp" %>
