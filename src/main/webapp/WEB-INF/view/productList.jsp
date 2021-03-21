<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<%@include file="/WEB-INF/view/templete/header.jsp"%>
<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>
<main>
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container-wrapper">

        <!-- Three columns of text below the carousel -->
        <div class="container">

            <div class="page-header">
                <h1>All Products</h1>
                <p class="lead">Checkout all the awesome products available now !!</p>
            </div>

            <table class="table table-striped table-hover" id="table">
                <thead class="bg-success">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th>Action</th>
                </thead>

                <c:forEach var="product" items="${products}">
                    <tr>
                        <td><img src="<c:url value="/resources/img/${product.productId}.png"/>" alt="image"
                                     style="width: 30%"></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productCondition}</td>
                        <td>${product.prince}$</td>
                        <td><a href="<spring:url value="/product/viewProduct/${product.productId}"/>" >
                            <span><i class="bi bi-info-circle-fill"></i></span></a></td>
                    </tr>
                </c:forEach>
            </table>
<%@include file="/WEB-INF/view/templete/footer.jsp"%>
