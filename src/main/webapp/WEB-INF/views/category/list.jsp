<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title></title>
</head>
<body>
<div class="well addCategory">
    <c:choose>
        <c:when test="${method=='edit'}">
            <h4>Редагування</h4>
            <form:form method="post" action="${baseURL}/category/edit/${category.id}" modelAttribute="category"
                       cssClass="navbar-form">
                <form:hidden path="id"/>
                <form:input path="name" placeholder="редагувати категорію" cssClass="input-xlarge"/>
                <input type="submit" class="btn btn-info" value="Зберегти"/>
                <form:errors path="name" id="name"/>
            </form:form>
        </c:when>
        <c:otherwise>
            <h4>Додати</h4>
            <form:form method="post" action="${baseURL}/category/add" modelAttribute="category" cssClass="navbar-form">
                <form:input path="name" placeholder="добавити категорію" cssClass="input-xlarge"/>
                <input type="submit" class="btn btn-info" value="Додати"/>
                <form:errors path="name" id="name"/>
            </form:form>
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>назва</th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <c:forEach var="category" items="${categoryAllList}">
                    <tr>
                        <td>${category.id}</td>
                        <td>${category.name}</td>
                        <td><a href="${baseURL}/category/edit/${category.id}"><i class="icon-pencil"></i></a></td>
                        <td><a href="${baseURL}/category/delete/${category.id}"><i class="icon-remove"></i></a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>

</div>
</body>
</html>
