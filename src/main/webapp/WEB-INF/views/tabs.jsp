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
                                                           href="${baseURL}/news/view/${news.id}">${news.tittle}</a>
                            </h3>

                            <p class="post-name-info">Автор: ${news.user.firstname} ${news.user.lastname}</p>
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
                                    <a href="${baseURL}/news/edit/${news.id}" class="btn btn-success btn-mini"><i
                                            class="icon-pencil"></i>редагувати</a>
                                    <a href="${baseURL}/news/delete/${news.id}" class="btn btn-danger btn-mini"><i
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
        <script>
            var myDate = {
                <c:forEach var="event" items="${events}">
                date${event.id}: {dat: new Date('${event.dateStart}'), title: "${event.tittle}", url: "${baseURL}/events/view/${event.id}"},
                </c:forEach>
            }
            datePicker(myDate);
        </script>
        <div class="span9">
            <c:forEach var="event" items="${events}">
                <div class="well">
                    <div class="row-fluid">
                        <div class="span2" style="width: 90px;">
                            <img src="${baseURL}/events/getImage/<c:out value="${event.id}"/>" alt=""
                                 class="attachment-post-thumbnail wp-post-image" alt=""
                                 width="90" height="96">
                        </div>
                        <div class="span10">
                            <h3 class="title-post-name"><a style="text-decoration: none;"
                                                           href="${baseURL}/events/view/${event.id}">${event.tittle}</a>
                            </h3>

                            <p class="post-name-info">${event.address}</p>
                            <a style="text-decoration: none;" href="#">
                                <span class="label label-success"><i
                                        class="icon-white icon-calendar"></i> <fmt:formatDate value="${event.dateStart}"
                                                                                              pattern="dd.MM.yyyy"/> ${event.timeStart}</span>
                            </a>
                        </div>
                    </div>
                    <p>${event.description}</p>
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
            </c:forEach>
        </div>
    </div>
    <div class="tab-pane" id="books">
        <div class="row">
            <form role="search" id="demo-b" class="navbar-search pull-right">
                <div class="input-append">
                    <input type="text" id="search">
                </div>
            </form>
        </div>
        <div class="row">
            <c:forEach var="book" items="${books}">
                <div class="flip3D">
                    <div class="back">
                        <div class="backBody">
                            <div>
                                <strong>${book[0].tittle}</strong>
                            </div>
                            <div>Автор <strong>${book[0].author}</strong></div>
                            <div>Рік <strong>${book[0].pubYear}</strong></div>
                            <div>
                                <strong>${book[0].description}</strong>
                            </div>
                        </div>
                        <div id="rateBack${book[0].id}" class="rating" my_book_id="${book[0].id}"
                             style="margin-top:18px;">&nbsp;</div>
                        <script>$("#rateBack${book[0].id}").rating("www.google.com", {maxvalue: 5, curvalue: 0 });</script>
                        <div class="backFooter">
                            <a href="${baseURL}/resources/books/files/${book[0].file}" class="btn btn-info btn-small"
                               target="_blank">
                            <i class="icon-download"></i> завантажити
                            </a>
                        </div>
                    </div>
                    <div class="front">
                        <div class="frontImage"
                             style="background: url(${baseURL}/resources/books/img/${book[0].img}); background-size: cover;"></div>
                        <div class="frontFooter">
                            <span>${book[0].tittle} </span>

                            <div style="width:100px; margin: 0 auto;">
                                <div id="rate${book[0].id}" class="rating" my_book_id="${book[0].id}">&nbsp;</div>
                                <script>$("#rate${book[0].id}").rating("www.google.com", {maxvalue: 5, curvalue: Math.ceil(${book[1]}) });</script>
                            </div>

                        </div>
                    </div>
                </div>
            </c:forEach>
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

            <div class="control-group" id="firstnameControlGroup">
                <label class="control-label">Ім'я:</label>

                <div class="controls">
                    <form:input path="firstname"/>
                    <span class="help-inline"><form:errors path="firstname"/></span>
                </div>
            </div>
            <div class="control-group" id="lastnameControlGroup">
                <label class="control-label">Прізвище:</label>

                <div class="controls">
                    <form:input path="lastname"/>
                    <span class="help-inline"><form:errors path="lastname"/></span>
                </div>
            </div>
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