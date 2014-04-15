<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
<div class="span3 fix">
    <div class="well">
        <ul class="nav nav-list">
            <li class="nav-header">
                Заголовок
            </li>
            <li>
                <a href="${baseURL}/news/add" id="addChart">
                    <i class="icon-envelope"></i>
                    Добавити публікацію
                </a>
            </li>
            <li>
                <a href="${baseURL}/books/add" id="addBook">
                    <i class="icon-book"></i>
                    Добавити книгу
                </a>
            </li>
            <li>
                <a href="${baseURL}/users/profile" id="myProfile">
                    <i class="icon-user"></i>
                    Мій профіль
                </a>
                <legend></legend>
            </li>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li>
                    <a href="${baseURL}/users/list" id="users">
                        <i class="icon-eye-open"></i>
                        Всі користувачі
                    </a>
                </li>
                <li>
                    <a href="${baseURL}/category" id="addCategory">
                        <i class="icon-plus-sign"></i>
                        добавити категорію(адмін)
                    </a>
                </li>
                <li>
                    <a href="${baseURL}/events/add" id="addEvent">
                        <i class="icon-comment"></i>
                        Добавити подію
                    </a>
                </li>
            </sec:authorize>
        </ul>
    </div>
</div>
</body>
</html>