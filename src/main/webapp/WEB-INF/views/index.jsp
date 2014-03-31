<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <title>Spring 3 MVC HashMap Form - viralpatel.net</title>
</head>
<body>
<h1>Інформаційний портал</h1>
<sec:authorize access="hasRole('ROLE_ADMIN')">
    <form:form method="post" action="news/add" modelAttribute="news">

        <table>
            <tr>
                <td>Назва</td>
                <td><form:input path="tittle"/></td>
            </tr>
            <tr>
                <td>Опис новини</td>
                <td><form:textarea path="description"/></td>
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
</sec:authorize>

<h3>Новини</h3>
<table>
    <c:forEach var="news" items="${newsAll}">
        <tr>
            <td align="center">${news.id}</td>
            <td align="center">${news.tittle}</td>
            <td align="center">${news.description}</td>
            <td align="center">${news.date}</td>
            <td align="center">${news.user.login}</td>
            <td align="center">${news.category.name}</td>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <td><a href="news/delete/${news.id}">видалити</a></td>
                <td><a href="news/edit/${news.id}">редагувати</a></td>
            </sec:authorize>
        </tr>
    </c:forEach>
</table>
<a href="news">на головну</a>
</body>
</html> 
