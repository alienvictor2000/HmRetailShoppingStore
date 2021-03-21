<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/templete/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form modelAttribute="order" class="form-horizontal">

        <h4>Shipping Address</h4>

        <div class="form-group">
            <label for="billNumber" style="font-weight: bold">Number</label>
            <form:input path="cart.customer.shippingAddress.number" id="billNumber" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billStreetName" style="font-weight: bold">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="billStreetName" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billDistrict" style="font-weight: bold">District</label>
            <form:input path="cart.customer.shippingAddress.district" id="billDistrict" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billWard" style="font-weight: bold">Ward</label>
            <form:input path="cart.customer.shippingAddress.ward" id="billWard" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billCity" style="font-weight: bold">City</label>
            <form:input path="cart.customer.shippingAddress.city" id="billCity" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billCountry" style="font-weight: bold">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="billCountry" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey"/>

        <br><br>

        <button class="btn btn-light" name="_eventId_backToCollectCustomerInfo">Back</button>
        <input type="submit" value="Next" class="btn btn-dark" name="_eventId_shippingDetailCollected">
        <button class="btn btn-light" name="_eventId_cancel">Cancel</button>
        </form:form>

        <%@include file="/WEB-INF/view/templete/footer.jsp" %>
