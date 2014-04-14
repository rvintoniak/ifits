<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<div class="well users">
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Імя</th>
            <th>Прізвище</th>
            <th>Логін</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${usersAll}" varStatus="iter">
            <tr>
                <td>${user[0].id}</td>
                <td>${user[0].firstname}</td>
                <td>${user[0].lastname}</td>
                <td>${user[0].login}</td>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <td><a href="${baseURL}/users/edit/${user[0].id}"><i class="icon-pencil"></i></a></td>
                    <td><a href="${baseURL}/users/delete/${user[0].id}" onclick="return confirm('Ви впевнені?')"><i
                            class="icon-remove"></i></a></td>
                </sec:authorize>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>