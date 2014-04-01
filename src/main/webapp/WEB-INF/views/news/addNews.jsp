<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
</head>
<body>
<h1>Додати новину:</h1>
    <form:form method="post" action="${baseURL}/news/add" modelAttribute="news">

        <table>
            <tr>
                <td>Назва</td>
                <td><form:input path="tittle" cssStyle="width: 404px;"/></td>
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
                <td colspan="2">
                    <input type="submit" value="Додати"/>
                </td>
            </tr>
        </table>
    </form:form>
<a href="news">на головну</a>
</body>
</html> 
