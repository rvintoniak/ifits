<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
                            <img src="${baseURL}/resources/img/2.jpg" alt="">
                        </a>

                        <div class="span2 btnRead">
                            <a class="btn pull-left showNew" href="#">читати &raquo;</a>
                            <sec:authorize access="isAuthenticated()">
                                <sec:authentication var="principal" property="principal"/>
                                <c:if test="${principal.username==news.user.login}">
                                    <a class="btn pull-left showNew" href="news/edit/${news.id}">редагувати&raquo;</a>
                                    <a class="btn pull-left showNew" href="news/delete/${news.id}">видалити &raquo;</a>
                                </c:if>
                            </sec:authorize>
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
                            <img src="${baseURL}/resources/img/events.jpg" alt="">
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
<div class="modal fade" id="register_modal" style="display: none;">
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>

        <h3>Реєстрація новго користувача</h3>
    </div>
    <div class="modal-body">
        <form:form class="form" action='${baseURL}/users/add' method="POST" id="regform" modelAttribute="user">
        <div class="control-group">
            <!-- Username -->
            <form:label cssClass="control-label" for="username" path="login">Логін</form:label>
            <div class="controls control-group error">
                <form:input path="login" id="username" cssClass="input-xlarge"/>
                <p class="help-block">Username can contain any letters or numbers, without spaces</p>
            </div>
        </div>

        <div class="control-group">
            <!-- E-mail -->
            <label class="control-label" for="email">E-mail</label>

            <div class="controls">
                <form:input id="email" path="email" placeholder="" cssClass="input-xlarge"/>
                <p class="help-block">Please provide your E-mail</p>
            </div>
        </div>

        <div class="control-group">
            <!-- Password-->
            <form:label cssClass="control-label" for="password" path="pass">Пароль</form:label>
            <div class="controls">
                <form:password id="password" path="pass" placeholder="" cssClass="input-xlarge"/>
                <p class="help-block">Password should be at least 4 characters</p>
            </div>
        </div>

        <div class="control-group">
            <!-- Password -->
            <label class="control-label" for="password_confirm">Пароль (повторно)</label>

            <div class="controls">
                <form:password id="password_confirm" path="pass2" placeholder="" cssClass="input-xlarge"/>
                <p class="help-block">Please confirm password</p>
            </div>
        </div>

        <div class="control-group">
            <!-- FULLNAME -->
            <label class="control-label" for="fullname">Повне ім"я</label>

            <div class="controls">
                <form:input id="fullname" path="fullname" placeholder="" cssClass="input-xlarge"/>
                <p class="help-block">Please provide your E-mail</p>
            </div>
        </div>

    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-info" onclick="document.getElementById('regform').submit();">register</a>
        </form:form>
    </div>
</div>