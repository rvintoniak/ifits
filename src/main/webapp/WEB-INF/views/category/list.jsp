<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title></title>
</head>
<body>
<h3>Категої</h3>
<c:choose>
    <c:when test="${method=='edit'}">
           <h4>Редагування</h4>
           <form:form method="post" action="${baseURL}/category/edit/${category.id}" modelAttribute="category">
            <form:hidden path="id" />
               <table>
                <tr>
                    <td>Назва категорії</td>
                    <td><form:input path="name"/></td>
                    <td><form:errors path="name" id="name"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Зберегти"/>
                    </td>
                </tr>
            </table>
            </form:form>
        </c:when>
    <c:otherwise>
        <h4>Додати</h4>
        <form:form method="post" action="${baseURL}/category/add" modelAttribute="category">
            <table>
                <tr>
                    <td>Назва категорії</td>
                    <td><form:input path="name"/></td>
                    <td><form:errors path="name" id="name"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Додати"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </c:otherwise>
    </c:choose>
<table>
    <c:forEach var="category"  items="${categoryAllList}">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td><a href="${baseURL}/category/edit/${category.id}">edit</a></td>
            <td><a href="${baseURL}/category/delete/${category.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${baseURL}/news">на головну</a>
</body>
</html>
