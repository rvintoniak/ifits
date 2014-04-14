<%--
  Created by IntelliJ IDEA.
  User: us8610
  Date: 02.04.14
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <c:set var="baseURL" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div class="carousel slide" id="MyCarousel" data-ride="carousel">
    <div class="carousel-inner">
        <div class="item active">
            <img src="${baseURL}/resources/img/brends/main.jpg"/>

            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
            </div>

        </div>
        <div class="item">
            <img src="${baseURL}/resources/img/brends/softserve.jpg"/>

            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
            </div>
        </div>
        <div class="item">
            <img src="${baseURL}/resources/img/brends/eleks.jpg"/>

            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
            </div>
        </div>
        <div class="item">
            <img src="${baseURL}/resources/img/brends/softjourn.png"/>

            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
            </div>
        </div>
    </div>
    <a class="carousel-control left" data-slide="prev" href="#MyCarousel">&lsaquo; </a>
    <a class="carousel-control right" data-slide="next" href="#MyCarousel">&rsaquo;</a>
</div>
</body>
</html>
