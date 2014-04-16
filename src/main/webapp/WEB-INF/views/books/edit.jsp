<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title></title>
</head>
<body>
<div class="well addBook">
    <form:form method="post" action="${baseURL}/books/edit/${book.id}" modelAttribute="book" cssClass="form"
               enctype="multipart/form-data">
        <form:hidden path="id"/>
        <form:hidden path="user.id"/>
        <div class="control-group">
            <div class="controls">
                <form:input path="tittle" placeholder="назва" cssClass="input-xlarge"/>
                <form:errors path="tittle"/>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <form:input path="author" placeholder="Автор" cssClass="input-xlarge"/>
                <form:errors path="author"/>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <form:input path="pubYear" placeholder="Рік" cssClass="input-xlarge"/>
                <form:errors path="pubYear"/>
            </div>
        </div>

        <div class="input">
            <form:textarea path="description" cssClass="input-xlarge" id="textarea" rows="3" placeholder="опис події"/>
            <form:errors path="description"/>
        </div>

        <div class="control-group">
            <div class="controls">
                <form:input type="file" path="image" id="img" accept="image/*"/>
                <form:errors path="image"/>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <form:input type="file" path="bookfile" id="file" accept="*"/>
                <form:errors path="bookfile"/>
            </div>
        </div>
        <br/>
        <input type="submit" class="btn btn-info" value="зберегти">
    </form:form>
</div>
</body>
</html>
