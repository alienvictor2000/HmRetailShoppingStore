<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/view/templete/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Order</h1>

            <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form modelAttribute="order" class="form-check-inline">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br>
                                        ${order.cart.customer.shippingAddress.number}
                                        ${order.cart.customer.shippingAddress.streetName}
                                        P.${order.cart.customer.shippingAddress.ward}, Q.${order.cart.customer.shippingAddress.district}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.country}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <p>Shipping Date: <fmt:formatDate value="${now}" type="date"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                        ${order.cart.customer.billingAddress.number}
                                        ${order.cart.customer.billingAddress.streetName}
                                        P.${order.cart.customer.billingAddress.ward}, Q.${order.cart.customer.billingAddress.district}
                                    <br>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.country}
                                    <br>
                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover" border="1">
                                <thead>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </thead>
                                <tbody>
                                    <c:forEach var="cartItem" items="${order.cart.cartItemList}">
                                        <tr>
                                            <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.product.prince}</td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                        </tr>
                                    </c:forEach>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td class="text-right">
                                            <h4><strong>Grand Total: </strong></h4>
                                        </td>
                                        <td class="text-center text-danger">
                                            <h4><strong>$ ${order.cart.grandTotal}</strong></h4>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey"/>

                        <br><br>

                        <button class="btn btn-light" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" value="Submit Order" class="btn btn-dark" name="_eventId_orderConfirmed">
                        <button class="btn btn-light" name="_eventId_cancel">Cancel</button>

                    </div>
                </form:form>
            </div>
        </div>

<%@include file="/WEB-INF/view/templete/footer.jsp" %>
