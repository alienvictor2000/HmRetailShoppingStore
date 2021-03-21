<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/templete/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form  modelAttribute="order" class="form-horizontal">

        <h4>Basic Info</h4>
        <div class="form-group">
            <label for="name" style="font-weight: bold">Name</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="email" style="font-weight: bold">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="phone" style="font-weight: bold">Phone
                    <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        </div>

        <br>

        <h4>Billing Address</h4>

        <div class="form-group">
            <label for="billNumber" style="font-weight: bold">Number</label>
            <form:input path="cart.customer.billingAddress.number" id="billNumber" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billStreetName" style="font-weight: bold">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billStreetName" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billDistrict" style="font-weight: bold">District</label>
            <form:input path="cart.customer.billingAddress.district" id="billDistrict" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billWard" style="font-weight: bold">Ward</label>
            <form:input path="cart.customer.billingAddress.ward" id="billWard" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billCity" style="font-weight: bold">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billCity" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billCountry" style="font-weight: bold">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billCountry" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey"/>

        <br><br>

        <input type="submit" value="Next" class="btn btn-dark" name="_eventId_customerInfoCollected">
        <button class="btn btn-light" name="_eventId_cancel">Cancel</button>
        </form:form>

        <%@include file="/WEB-INF/view/templete/footer.jsp" %>
