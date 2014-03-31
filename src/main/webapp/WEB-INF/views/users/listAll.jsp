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
<h3>Користувачі</h3>
<table>
    <c:forEach var="user" items="${usersAll}" varStatus="iter">
        <tr>
            <td align="center">${user[0].id}</td>
            <td align="center">${user[0].login}</td>
            <td align="center">${user[0].pass}</td>
            <td align="center">${user[0].enabled}</td>
            <td align="center">${user[1].authority}</td>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <td><a href="${baseURL}/users/delete/${user[0].id}">видалити</a></td>
                <td><a href="${baseURL}/users/edit/${user[0].id}">редагувати</a></td>
            </sec:authorize>
        </tr>
    </c:forEach>
</table>
</body>
</html>