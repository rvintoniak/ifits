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
            <img src="${baseURL}/resources/img/22.jpg"/>
            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
                <p>слайд слайд слайд слайд слайд</p>
            </div>

        </div>
        <div class="item">
            <img src="${baseURL}/resources/img/22.jpg"/>
            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
                <p>слайд слайд слайд слайд слайд</p>
            </div>
        </div>
        <div class="item">
            <img src="${baseURL}/resources/img/22.jpg"/>
            <div class="carousel-caption">
                <h4>заголовок слайда</h4>
                <p>слайд слайд слайд слайд слайд</p>
            </div>
        </div>
    </div>
    <a class="carousel-control left" data-slide="prev" href="#MyCarousel">&lsaquo; </a>
    <a class="carousel-control right" data-slide="next" href="#MyCarousel">&rsaquo;</a>
</div>
</body>
</html>
