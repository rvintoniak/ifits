<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8">
    <script src="${baseURL}/resources/js/jquery.tools.min.js"></script>
    <script src="${baseURL}/resources/js/adminka.js"></script>
    <link href="${baseURL}/resources/widget/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="${baseURL}/resources/widget/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${baseURL}/resources/css/adminka.css" rel="stylesheet">
    <script type="text/javascript" src="${baseURL}/resources/widget/bootstrap/js/bootstrap.js"></script>
    <link href="${baseURL}/resources/widget/datepik/datepicker.css" rel="stylesheet" type="text/css"/>
    <script src="${baseURL}/resources/widget/datepik/bootstrap-datepicker.js"></script>
    <script src="${baseURL}/resources/widget/elRTE-stable/js/jquery-ui-1.8.13.custom.min.js" type="text/javascript"
            charset="utf-8"></script>
    <link rel="stylesheet" href="${baseURL}/resources/widget/elRTE-stable/css/smoothness/jquery-ui-1.8.13.custom.css"
          type="text/css" media="screen" charset="utf-8">
    <script src="${baseURL}/resources/widget/elRTE-stable/js/elrte.min.js" type="text/javascript"
            charset="utf-8"></script>
    <link rel="stylesheet" href="${baseURL}/resources/widget/elRTE-stable/css/elrte.min.css" type="text/css"
          media="screen" charset="utf-8">
    <script src="${baseURL}/resources/widget/elRTE-stable/js/i18n/elrte.ru.js" type="text/javascript"
            charset="utf-8"></script>
    <link href="${baseURL}/resources/widget/datepik/datepicker.css" rel="stylesheet" type="text/css"/>
    <script src="${baseURL}/resources/widget/datepik/bootstrap-datepicker.js"></script>
    <link type="text/css"
          href="${baseURL}/resources/widget/timepicker/bootstrap-timepicker-gh-pages/css/bootstrap-timepicker.min.css"/>
    <script type="text/javascript"
            src="${baseURL}/resources/widget/timepicker/bootstrap-timepicker-gh-pages/js/bootstrap-timepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#${active}').parent().addClass('active');
            var defaultClassContent = $('.nav.nav-list li.active a').attr('id');
            $('.' + defaultClassContent).fadeIn(1500);
            function initEditor() {
                var opts = {
                    cssClass: 'el-rte',
                    // lang     : 'ru',
                    height: 250,
                    width: 720,
                    toolbar: 'complete',
                    cssfiles: ['${baseURL}/resources/widget/elRTE-stable/css/elrte-inner.css']
                }

                if ($('#editor').parents('.addChart').css('display') != 'none') {
                    $('#editor').elrte(opts);
                }
                if ($('#editorEvents').parents('.addEvent').css('display') != 'none') {
                    $('#editorEvents').elrte(opts);
                }
            };
            initEditor();
            $(document).on('click', '.nav.nav-list li a', function (e) {
                var getIdClass = $(this).attr('id');
                var needHide = $('.nav.nav-list li.active a').attr('id');
                $('.nav.nav-list li.active').removeClass('active');
                $(this).parent().addClass('active');
                $('.' + needHide).hide();
                $('.' + getIdClass).fadeIn(1200);
                initEditor();
            });
        });
    </script>
</head>
<body>
<tiles:insertAttribute name="menu"/>
<div class="container" id="adminContent" style="margin-top: 30px;">
    <tiles:insertAttribute name="leftmenu"/>
    <div class="span8">
        <tiles:insertAttribute name="content"/>
    </div>
</div>
</body>
</html>