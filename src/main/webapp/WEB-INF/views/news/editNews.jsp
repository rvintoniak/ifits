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
<h4>Edit news</h4>
<form:form method="POST" action="${baseURL}/news/edit/${news.id}" commandName="news" enctype="multipart/form-data">
    <form:hidden path="id"/>
    <form:hidden path="user.id"/>
    <table>
        <tr>
            <td>Назва</td>
            <td><form:input path="tittle"/></td>
        </tr>
        <tr>
            <td>Опис новини</td>
            <td><form:textarea path="description" cssStyle="margin: 2px; width: 404px; height: 215px;"/></td>
        </tr>
        <tr>
            <td>Категорія</td>
            <td>
                <form:select path="category.id">
                    <form:options items="${categoryAll}"/>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>Файл</td>
            <td><input type="file" name="file" id="file" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Зберегти"/>
            </td>
        </tr>

    </table>
</form:form>
<a href="${baseURL}/news">на головну</a>

</body>
</html>