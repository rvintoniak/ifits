<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<div class="well addChart">
    <form:form method="POST" action="${baseURL}/news/edit/${news.id}" commandName="news" enctype="multipart/form-data">
        <form:hidden path="id"/>
        <form:hidden path="user.id"/>
        <div class="control-group">
            <div class="controls">
                <form:input path="tittle" placeholder="заголовок" cssClass="input-xlarge"/>
            </div>
        </div>
        <form:select path="category.id" cssClass="span2">
            <form:options items="${categoryAll}"/>
        </form:select>

        <div class="control-group">
            <div class="controls">
                <form:input type="file" path="file" id="file" accept="image/*"/>
                <form:errors path="file" id="file"/>
            </div>
        </div>
        <div class="input">
            <form:textarea path="description" rows="3" placeholder="короткий опис" cssStyle="input-xlarge"/>
        </div>
        <form:textarea path="text" id="editor"/>
        <br/>
        <input type="submit" class="btn btn-info" value="зберегти">
    </form:form>
</div>
</body>
</html>