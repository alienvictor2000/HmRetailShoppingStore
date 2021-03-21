<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/templete/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name" style="font-weight: bold">Name</label><form:errors path="productName" cssStyle="color: red"/>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="category" style="font-weight: bold">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Men" checked = "checked"/>Men</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Women" />Women</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Kid" />Kid</label>
        </div>

        <br>

        <div class="form-group">
            <label for="description" style="font-weight: bold">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="price" style="font-weight: bold">Price</label> <form:errors path="prince" cssStyle="color: red"/>
            <form:input path="prince" id="price" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="condition" style="font-weight: bold">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="New" checked = "checked"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="Used" />Used</label>
        </div>

        <br>

        <div class="form-group">
            <label for="status" style="font-weight: bold">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Active" checked = "checked"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Inactive"/>Inactive</label>
        </div>

        <br>

        <div class="form-group"> <form:errors path="unitInStock" cssStyle="color: red"/>
            <label for="unitInStock" style="font-weight: bold">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="manufacturer" style="font-weight: bold">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
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
