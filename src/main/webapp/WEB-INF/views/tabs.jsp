<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
    <li class="active"><a href="#red" data-toggle="tab">Новини</a></li>
    <li><a href="#orange" data-toggle="tab">Події</a></li>
    <li><a href="#picker" class="callpicker" data-toggle="tab">Календар подій</a></li>
</ul>
<div id="datepicker" style="float: left; display: none;"></div>
<div id="my-tab-content" class="tab-content">
    <div class="tab-pane active" id="red">
        <div class="span9">
            <c:forEach var="news" items="${newsAll}">
            <div class="row">
                <div class="span3">
                    <a href="#" class="thumbnail">
                        <img  src="${baseURL}/resources/img/2.jpg" alt="">
                    </a>
                    <div class="span2 btnRead">
                        <a class="btn pull-left showNew" href="#">читати &raquo;</a>
                    </div>
                </div>
                <div class="span6">
                    <p><b><u>${news.tittle}</u></b></p>
                    <p class="text-news">${news.description}</p>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    <div class="tab-pane" id="orange">
        <div class="span9">
            <c:forEach var="news" items="${newsAll}">
            <div class="row">
                <div class="span3">
                    <a href="#" class="thumbnail">
                        <img  src="${baseURL}/resources/img/events.jpg" alt="">
                    </a>
                    <div class="span2 btnRead">
                        <a class="btn pull-left showNew" href="#">читати &raquo;</a>
                    </div>
                </div>
                <div class="span6">
                    <p>${news.description}</p>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>