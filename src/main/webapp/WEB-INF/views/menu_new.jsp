<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">PORTAL</a>

            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active"><a href="${baseURL}/news">Головна</a></li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <li><a href="${baseURL}/users/list">Користувачі</a></li>
                    </sec:authorize>
                    <li><a href="#about">Література</a></li>
                    <sec:authorize access="isAuthenticated()">
                        <li><a href="${baseURL}/news/add">Добавити новину</a></li>
                    </sec:authorize>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Про нас<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Загальна інформація</a></li>
                            <li><a href="#">Фотоальбоми</a></li>
                            <li><a href="#">Анікдоти</a></li>
                        </ul>
                    </li>
                    <sec:authorize access="isAnonymous()">
                        <li><a href="#register_modal" data-toggle="modal">реєстрація</a></li>
                        <li><a href="#register_modal" data-toggle="modal">${logout}</a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <li class="active"><a>Привіт, <sec:authentication property="principal.username"/></a></li>
                        <li><a href="<c:url value="${baseURL}/j_spring_security_logout" />">Вийти</a></li>
                    </sec:authorize>
                </ul>
                <sec:authorize access="isAnonymous()">
                    <form class="navbar-form pull-right" action="<c:url value='${baseURL}/j_spring_security_check' />"
                          method='POST'>
                        <input class="span2" type="text" name="j_username" placeholder="Email">
                        <input class="span2" type="password" name="j_password" placeholder="Password">
                        <button type="submit" class="btn">ок</button>
                    </form>
                </sec:authorize>
                <c:if test="${not empty error}">
                    <div class="errorblock">
                        Помилка авторизаії<br>
                        Причина :${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
