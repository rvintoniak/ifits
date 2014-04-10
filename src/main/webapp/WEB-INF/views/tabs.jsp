<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>

<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
    <li class="active"><a href="#articles" data-toggle="tab">Новини</a></li>
    <li><a href="#events" data-toggle="tab">Події</a></li>
    <li><a href="#books" data-toggle="tab">Книги</a></li>
</ul>
<div id="my-tab-content" class="tab-content">
    <div class="tab-pane active" id="articles">

        <div class="span3 fix leftNews">
            <div class="well">
                <ul class="nav nav-tabs nav-stacked">
                    <li class="nav-header category"><h4>Категорії</h4></li>
                    <div class="menu">
                        <c:forEach var="tag" items="${tags}">
                            <li>
                                <a href="${baseURL}/news/tag/${fn:toLowerCase(tag[0])}">
                                    <div>${tag[0]} <span style="color: #C2C2C2; font-size: 12px;">(${tag[1]})</span>
                                    </div>
                                </a>
                            </li>
                        </c:forEach>
                    </div>
                </ul>
            </div>
        </div>
        <!-- <div class="well">-->
        <div class="span9">
            <c:forEach var="news" items="${newsAll}">
                <div class="well">
                    <div class="row-fluid">
                        <div class="span2" style="width: 90px;">
                            <img src="${baseURL}/news/getImage/<c:out value="${news.id}"/>" alt=""
                                 class="attachment-post-thumbnail wp-post-image" alt="">
                        </div>
                        <div class="span10">
                            <h3 class="title-post-name"><a style="text-decoration: none;"
                                                           href="http://devcolibri.com/4137">${news.tittle}</a></h3>

                            <p class="post-name-info">Автор: ${news.user.login}</p>
                            <a style="text-decoration: none;" href="#">
                                <span class="label label-success">${news.category.name}</span>
                            </a>
                        </div>
                    </div>
                    <p>${news.description}</p>
                    <legend></legend>
                    <div class="buttom-post-info">
                        <i class="icon-time"></i><fmt:formatDate value="${news.date}" pattern="dd.MM.yyyy"/>
                        <sec:authorize access="isAuthenticated()">
                            <sec:authentication var="principal" property="principal"/>
                            <c:if test="${principal.username==news.user.login}">
                                <div style="float: right;">
                                    <a href="news/edit/${news.id}" class="btn btn-success btn-mini"><i
                                            class="icon-pencil"></i>редагувати</a>
                                    <a href="news/delete/${news.id}" class="btn btn-danger btn-mini"><i
                                            class="icon-trash"></i>видалити</a>
                                </div>
                            </c:if>
                        </sec:authorize>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="tab-pane" id="events">
        <div class="span3 fix leftNews">
            <div class="well">
                <div id="datepicker"></div>
            </div>
        </div>
        <!-- <div class="well">-->
        <div class="span9">
            <div class="well">
                <div class="row-fluid">
                    <div class="span2" style="width: 90px;">
                        <img src="img/itStudents.jpg" alt="" class="attachment-post-thumbnail wp-post-image" alt=""
                             width="90" height="96">
                    </div>
                    <div class="span10">
                        <h3 class="title-post-name"><a style="text-decoration: none;" href="http://devcolibri.com/4137">Зустріч</a>
                        </h3>

                        <p class="post-name-info">Івано-Франківськ, вул. Чорновола 22</p>
                        <a style="text-decoration: none;" href="#">
                            <span class="label label-success">16.04.2014</span>
                        </a>
                    </div>
                </div>
                <p>Привіт, у нас стартує серія зустрічей і всіх вас запрошуємо, буде цікаво та інформативно.
                    Перша зустріч 13 березня.

                    В нас також змінилось місце зустрічі, тому будемо чекати вас на
                    вул. Гарбарській 22 на 8 поверсі у новому Конференц залі.

                    Приходьте самі та беріть друзів )))
                    Реєстрація:
                </p>
                <legend></legend>
                <div class="buttom-post-info">
                    <i class="icon-time"></i> 02.04.2014
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane" id="books">
        <script src="rating/jquery.rating.js"></script>
        <link href="rating/rating.css" rel="stylesheet">
        <div class="row">
            <div class="flip3D">
                <div class="back">
                    <div>не перед</div>
                    <div id="rate2" class="rating" my_book_id="1">&nbsp;</div>
                    <script>$("#rate2").rating("www.google.com", {maxvalue: 5, curvalue: 0});</script>
                </div>
                <div class="front">
                    <div>
                        book php
                        <br>

                        <div style="width:100px; margin: 0 auto;">
                            <div id="rate" class="rating" my_book_id="1">&nbsp;</div>
                        </div>
                        <script>$("#rate").rating("www.google.com", {maxvalue: 5, curvalue: 0});</script>
                    </div>

                </div>
            </div>
            <div class="flip3D">
                <div class="back">
                    <div>не перед</div>
                </div>
                <div class="front">
                    <div>book java</div>
                </div>
            </div>
            <div class="flip3D">
                <div class="back">
                    <div>не перед</div>
                </div>
                <div class="front">
                    <div>book c#</div>
                </div>
            </div>
            <div class="flip3D">
                <div class="back">
                    <div>не перед</div>
                </div>
                <div class="front">
                    <div>перед</div>
                </div>
            </div>
            <div class="flip3D">
                <div class="back">
                    <div>не перед</div>
                </div>
                <div class="front">
                    <div>book javascript</div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $('#tabs').tab();
    });
</script>
</div>

<hr>

<footer>
    <p>&copy; Івано-франківськ 2014</p>
</footer>
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
    $(document).ready(function () {
        var $form = $('#regform');
        $form.bind('submit', function (e) {
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