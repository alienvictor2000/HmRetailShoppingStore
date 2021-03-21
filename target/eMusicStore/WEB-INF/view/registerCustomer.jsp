<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/templete/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   modelAttribute="customer">

        <h4>Basic Info</h4>

        <div class="form-group">
            <label for="name" style="font-weight: bold">Name</label><form:errors path="customerName" cssStyle="color: red"/>
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="email" style="font-weight: bold">Email</label><span style="color: red"> ${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: red"/>
            <form:input type="email" path="customerEmail" id="email" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="phone" style="font-weight: bold">Phone
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="username" style="font-weight: bold">Username</label><span style="color: red"> ${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: red"/>
            <form:input path="username" id="username" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="password" style="font-weight: bold">Password</label><form:errors path="password" cssStyle="color: red"/>
            <form:input type="password" path="password" id="password" class="form-Control"/>
        </div>

        <br>

        <h4>Billing Address</h4>

        <div class="form-group">
            <label for="billNumber" style="font-weight: bold">Number</label>
            <form:input path="billingAddress.number" id="billNumber" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billStreetName" style="font-weight: bold">Street Name</label>
            <form:input path="billingAddress.streetName" id="billStreetName" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billDistrict" style="font-weight: bold">District</label>
            <form:input path="billingAddress.district" id="billDistrict" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billWard" style="font-weight: bold">Ward</label>
            <form:input path="billingAddress.ward" id="billWard" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billCity" style="font-weight: bold">City</label>
            <form:input path="billingAddress.city" id="billCity" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="billCountry" style="font-weight: bold">Country</label>
            <form:input path="billingAddress.country" id="billCountry" class="form-Control"/>
        </div>

        <br>

        <h4>Shipping Address</h4>

        <div class="form-group">
            <label for="shipNumber" style="font-weight: bold">Number</label>
            <form:input path="shippingAddress.number" id="shipNumber" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="shipnStreetName" style="font-weight: bold">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shipnStreetName" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="shipDistrict" style="font-weight: bold">District</label>
            <form:input path="shippingAddress.district" id="shipDistrict" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="shipWard" style="font-weight: bold">Ward</label>
            <form:input path="shippingAddress.ward" id="shipWard" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="shipCity" style="font-weight: bold">City</label>
            <form:input path="shippingAddress.city" id="shipCity" class="form-Control"/>
        </div>

        <br>

        <div class="form-group">
            <label for="shipCountry" style="font-weight: bold">Country</label>
            <form:input path="shippingAddress.country" id="shipCountry" class="form-Control"/>
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-dark">
        <a href="<c:url value="/" />" class="btn btn-light">Cancel</a>
        </form:form>

<%@include file="/WEB-INF/view/templete/footer.jsp" %>
