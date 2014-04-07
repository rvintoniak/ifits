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
                            <img src="${baseURL}/news/getImage/<c:out value="${news.id}"/>" alt="">
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

            <div class="control-group" id="loginControlGroup">
                <label class="control-label">Логін:</label>
                <div class="controls">
                    <form:input path="login"/>
                    <span class="help-inline"><form:errors path="login"/></span>
                </div>
            </div>

            <div class="control-group" id="passControlGroup">
                <label class="control-label">Пароль:</label>

                <div class="controls">
                    <form:password path="pass"/>
                    <span class="help-inline"><form:errors path="pass"/></span>
                </div>
            </div>

            <div class="control-group" id="pass2ControlGroup">
                <label class="control-label">Пароль(повторно):</label>

                <div class="controls">
                    <form:password path="pass2"/>
                    <span class="help-inline"><form:errors path="pass2"/></span>
                </div>
            </div>

            <div class="control-group" id="emailControlGroup">
                <label class="control-label">E-mail:</label>

                <div class="controls">
                    <form:input path="email"/>
                    <span class="help-inline"><form:errors path="email"/></span>
                </div>
            </div>

            <div class="control-group" id="fullnameControlGroup">
                <label class="control-label">Повне ім"я:</label>

                <div class="controls">
                    <form:input path="fullname"/>
                    <span class="help-inline"><form:errors path="fullname"/></span>
                </div>
            </div>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <button type="submit" class="btn btn-primary">Save changes</button>
        </form:form>
    </div>
</div>
<script>
    function collectFormData(fields) {
        var data = {};
        for (var i = 0; i < fields.length; i++) {
            var $item = $(fields[i]);
            data[$item.attr('name')] = $item.val();
        }
        return data;
    }
    $(document).ready(function() {
        var $form = $('#regform');
        $form.bind('submit', function(e) {
            // Ajax validation
            var $inputs = $form.find('input');
            var data = collectFormData($inputs);

            $.post("${baseURL}/users/addJson", data, function (response) {
                $form.find('.control-group').removeClass('error');
                $form.find('.help-inline').empty();
                $form.find('.alert').remove();

                if (response.status == 'FAIL') {
                    for (var i = 0; i < response.errorMessageList.length; i++) {
                        var item = response.errorMessageList[i];
                        var $controlGroup = $('#' + item.fieldName + 'ControlGroup');
                        $controlGroup.addClass('error');
                        $controlGroup.find('.help-inline').html(item.message);
                    }
                } else {
                    $form.unbind('submit');
                    $form.submit();
                }
            }, 'json');

            e.preventDefault();
            return false;
        });
    });
</script>