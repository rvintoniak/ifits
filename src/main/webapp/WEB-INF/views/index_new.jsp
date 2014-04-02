<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
</head>
<body>
<h1>Інформаційний портал</h1>

<h3>Новини</h3>
<table>
    <c:forEach var="news" items="${newsAll}">
        <div style="border: 2px solid;">
            <div class="published"><fmt:formatDate value="${news.date}" pattern="dd.MM.yyyy" /></div>
            <h1 class="title">
                <a href="#">${news.tittle}</a>
            </h1>
            <div class="content">
                    ${news.description}
                <div class="buttons">
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <a href="news/edit/${news.id}">редагувати</a>
                        <a href="news/delete/${news.id}" onclick="return confirm('Ви впевнені?')">видалити</a>
                     </sec:authorize>
                </div>
                <div>${news.user.login}||${news.category.name}</div>
                <div class="clear" style="clear: both;"></div>
            </div>
        </div>
    </c:forEach>
</table>
<a href="news">на головну</a>
</body>
</html> 
