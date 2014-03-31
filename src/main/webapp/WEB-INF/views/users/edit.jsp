<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
    <title>Insert title here</title>
</head>
<body>
<h4>Edit users</h4>
<form:form method="POST" action="${baseURL}/users/edit/${user.id}"
           commandName="user">
    <form:hidden path="id"/>
    <form:hidden path="role.user_id"/>
    <table>
        <tr>
            <td>Логін</td>
            <td><form:input path="login"/></td>
        </tr>
        <tr>
            <td>Пароль</td>
            <td><form:input path="pass"/></td>
        </tr>
        <tr>
            <td>Роль</td>
            <td><form:select path="role.authority">
                <form:option value="ROLE_ADMIN" label="ADMIN"/>
                <form:option value="ROLE_USER" label="USER"/>
            </form:select>
            </td>
        </tr>
        <tr>
            <td>Блокувати</td>
            <td><form:radiobutton path="enabled" value="0"/>Так
                <form:radiobutton path="enabled" value="1"/>Ні
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Зберегти"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>