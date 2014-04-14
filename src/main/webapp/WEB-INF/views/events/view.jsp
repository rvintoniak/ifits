<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="row">
    <div class="span12">
        <div class="well">
            <div class="row-fluid">
                <div class="span2" style="width: 90px;">
                    <img src="${baseURL}/events/getImage/<c:out value="${event.id}"/>" alt=""
                         class="attachment-post-thumbnail wp-post-image" alt=""
                         width="90" height="96">
                </div>
                <div class="span10">
                    <h3 class="title-post-name"><a style="text-decoration: none;"
                                                   href="#">${event.tittle}</a>
                    </h3>

                    <p class="post-name-info">${event.address}</p>
                    <a style="text-decoration: none;" href="#">
                                <span class="label label-success"><fmt:formatDate value="${event.dateStart}"
                                                                                  pattern="dd.MM.yyyy"/></span>
                    </a>
                </div>
            </div>
            <p>${event.text}</p>
            <legend></legend>
            <div class="buttom-post-info">
                <i class="icon-time"></i> <fmt:formatDate value="${event.dateCreate}" pattern="dd.MM.yyyy"/>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <div style="float: right;">
                        <a href="${baseURL}/events/edit/${event.id}" class="btn btn-success btn-mini"><i
                                class="icon-pencil"></i>редагувати</a>
                        <a href="${baseURL}/events/delete/${event.id}" class="btn btn-danger btn-mini"><i
                                class="icon-trash"></i>видалити</a>
                    </div>
                </sec:authorize>
            </div>
        </div>
    </div>
</div>
</body>
</html>
