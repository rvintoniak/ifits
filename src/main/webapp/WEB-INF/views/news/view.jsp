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
                    <img src="${baseURL}/news/getImage/<c:out value="${news.id}"/>" alt=""
                         class="attachment-post-thumbnail wp-post-image" alt="">
                </div>
                <div class="span10">
                    <h3 class="title-post-name"><a style="text-decoration: none;"
                                                   href="#">${news.tittle}</a></h3>

                    <p class="post-name-info">Автор: ${news.user.firstname} ${news.user.lastname}</p>
                    <a style="text-decoration: none;" href="#">
                        <span class="label label-success">${news.category.name}</span>
                    </a>
                </div>
            </div>
            <p>${news.text}</p>
            <legend></legend>
            <div class="buttom-post-info">
                <i class="icon-time"></i><fmt:formatDate value="${news.date}" pattern="dd.MM.yyyy"/>
                <sec:authorize access="isAuthenticated()">
                    <sec:authentication var="principal" property="principal"/>
                    <c:if test="${principal.username==news.user.login}">
                        <div style="float: right;">
                            <a href="${baseURL}/news/edit/${news.id}" class="btn btn-success btn-mini"><i
                                    class="icon-pencil"></i>редагувати</a>
                            <a href="${baseURL}/news/delete/${news.id}" class="btn btn-danger btn-mini"><i
                                    class="icon-trash"></i>видалити</a>
                        </div>
                    </c:if>
                </sec:authorize>
            </div>
        </div>
    </div>
</div>
</body>
</html>
