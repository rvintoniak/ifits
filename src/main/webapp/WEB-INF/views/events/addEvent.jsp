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
    <form:form method="post" action="${baseURL}/events/add" modelAttribute="event" enctype="multipart/form-data">

        <table>
            <tr>
                <td>Назва</td>
                <td><form:input path="tittle" cssStyle="width: 404px;"/></td>
            </tr>
            <tr>
                <td>Адреса</td>
                <td><form:input path="address"/></td>
            </tr>
            <tr>
                <td>Дата події</td>
                <td><form:input path="dateStart"/></td>
                <td><form:input path="timeStart"/></td>
            </tr>
            <tr>
                <td>Опис події</td>
                <td><form:textarea path="description" cssStyle="margin: 2px; width: 404px; height: 115px;"/></td>
            </tr>
            <tr>
                <td>Текст події</td>
                <td><form:textarea path="text" cssStyle="margin: 2px; width: 404px; height: 215px;"/></td>
            </tr>
            <tr>
                <td>файл</td>
                <td><form:input type="file" path="file" id="file" accept="image/*"/></td>
                <td><form:errors path="file" id="file"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Додати"/>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html> 
