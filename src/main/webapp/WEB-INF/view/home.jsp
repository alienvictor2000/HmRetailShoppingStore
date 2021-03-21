<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<%@include file="/WEB-INF/view/templete/header.jsp"%>
<main>

    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" style="height: 100%">
            <div class="carousel-item active">
                <img src="<c:url value="/resources/img/back1.jpg"/>" class="first-slide home-image"/>

                <div class="container">
                    <div class="carousel-caption text-start">
                        <h1>Example headline.</h1>
                        <p>Some representative placeholder content for the first slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="<c:url value="/register"/>">Sign up today</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="<c:url value="/resources/img/back2.jpg"/>" class="second-slide home-image"/>

                <div class="container">
                    <div class="carousel-caption">
                        <h1>Another example headline.</h1>
                        <p>Some representative placeholder content for the second slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="<c:url value="/about"/>">Contact Us</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="<c:url value="/resources/img/back3.jpg"/>" class="third-slide home-image"/>

                <div class="container">
                    <div class="carousel-caption text-end">
                        <h1>One more for good measure.</h1>
                        <p>Some representative placeholder content for the third slide of this carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="<c:url value="/product/productList/all"/>">View Products</a></p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
            <div class="col-lg-4">
                <a class="btn btn-light" href="<c:url value="/product/productList?searchCondition=Men"/>">
                    <img src="<c:url value="/resources/img/men1.jpg"/>" class="img-circle" alt="Men" width="140" height="140">
                </a>
                <h2>Men</h2>
                <p>Men fashion</p>

            </div>

            <div class="col-lg-4">
                <a class="btn btn-light" href="<c:url value="/product/productList?searchCondition=Women"/> ">
                    <img src="<c:url value="/resources/img/women.jpg"/>" class="img-circle" alt="Men" width="140" height="140">
                </a>

                <h2>Women</h2>
                <p>Women fashion</p>
            </div>

            <div class="col-lg-4">
                <a class="btn btn-light" href="<c:url value="/product/productList?searchCondition=Kid"/> ">
                    <img style="border-radius: 50%" src="<c:url value="/resources/img/kid.jpg"/>" class="img-circle" alt="Men" width="140" height="140">
                </a>
                <h2>Kid</h2>
                <p>Kid fashion</p>
            </div>


        </div>

<%@include file="/WEB-INF/view/templete/footer.jsp"%>
