<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>

    <title>Insert title here</title>
    <style>
        .error {
            color: #ff0000;
        }
    </style>
</head>
<body>
<div class="well myProfile">
    <form:form method="POST" action="${baseURL}/users/edit/${user.id}"
               commandName="user">
        <form:hidden path="id"/>
        <form:hidden path="role.user_id"/>

        <div class="control-group" id="firstnameControlGroup">
            <label class="control-label">Ім'я:</label>

            <div class="controls">
                <form:input path="firstname"/>
                <span class="help-inline"><form:errors path="firstname"/></span>
            </div>
        </div>

        <div class="control-group" id="lastnameControlGroup">
            <label class="control-label">Прізвище:</label>

            <div class="controls">
                <form:input path="lastname"/>
                <span class="help-inline"><form:errors path="lastname"/></span>
            </div>
        </div>

        <div class="control-group" id="loginControlGroup">
            <label class="control-label">Логін:</label>

            <div class="controls">
                <form:input path="login" readonly="true"/>
                <span class="help-inline error"><form:errors path="login"/></span>
            </div>
        </div>

        <div class="control-group" id="passControlGroup">
            <label class="control-label">Пароль:</label>

            <div class="controls">
                <form:password path="pass" showPassword="true"/>
                <span class="help-inline"><form:errors path="pass" cssClass="error"/></span>
            </div>
        </div>

        <div class="control-group" id="pass2ControlGroup">
            <label class="control-label">Пароль(повторно):</label>

            <div class="controls">
                <form:password path="pass2" showPassword="true"/>
                <span class="help-inline error"><form:errors path="pass2" cssClass="error"/></span>
            </div>
        </div>

        <div class="control-group" id="emailControlGroup">
            <label class="control-label">E-mail:</label>

            <div class="controls">
                <form:input path="email"/>
                <span class="help-inline"><form:errors path="email" cssClass="error"/></span>
            </div>
        </div>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
            <div class="control-group" id="roleControlGroup">
                <label class="control-label">Роль:</label>

                <div class="controls">
                    <form:select path="role.authority">
                        <form:option value="ROLE_ADMIN" label="ADMIN"/>
                        <form:option value="ROLE_USER" label="USER"/>
                    </form:select>
                </div>
            </div>
            <div class="control-group" id="roleControlGroup">
                <label class="control-label">Блокувати:</label>

                <div class="controls">
                    <form:radiobutton path="enabled" value="0"/>Так
                    <form:radiobutton path="enabled" value="1"/>Ні
                </div>
            </div>
        </sec:authorize>
        <br/>
        <input type="submit" class="btn btn-info" value="зберегти">
    </form:form>
</div>
</body>
</html>