<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/templete/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product information here: </p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}"/>

        <div class="form-group">
            <label for="name" style="font-weight: bold">Name</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

        <br>

        <div class="form-group">
            <label for="category" style="font-weight: bold">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Men" />Men</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Women" />Women</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Kid" />Kid</label>
        </div>

        <br>

        <div class="form-group">
            <label for="description" style="font-weight: bold">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>

        <br>

        <div class="form-group">
            <label for="price" style="font-weight: bold">Price</label>
            <form:input path="prince" id="price" class="form-Control" value="${product.prince}"/>
        </div>

        <br>

        <div class="form-group">
            <label for="condition" style="font-weight: bold">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="New" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="Used" />Used</label>
        </div>

        <br>

        <div class="form-group">
            <label for="status" style="font-weight: bold">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Inactive" />Inactive</label>
        </div>

        <br>

        <div class="form-group">
            <label for="unitInStock" style="font-weight: bold">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
        </div>

        <br>

        <div class="form-group">
            <label for="manufacturer" style="font-weight: bold">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
        </div>

        <br>

        <div class="form-group">
            <label class="control-label" for="productImage" style="font-weight: bold">Upload Picture</label>
            <form:input id="productImage" path="pro_img" type="file" class="form:input-large" />
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-dark">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-light">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/view/templete/footer.jsp" %>
