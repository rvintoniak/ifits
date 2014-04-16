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
            /* elRTE 'custom' toolbar */
            elRTE.prototype.options.panels.custom = [
                'bold', 'italic', 'underline', 'forecolor',
                'fontsize', 'formatblock', 'insertorderedlist', 'insertunorderedlist', 'docstructure'
            ];
            elRTE.prototype.options.toolbars.custom = ['custom', 'eol', 'undoredo', 'alignment', 'eol', 'links', 'images'];

            (function ($) {
                elRTE.prototype.ui.prototype.buttons.youtube = function (rte, name) {
                    this.constructor.prototype.constructor.call(this, rte, name);

                    this.youtube_url = $('<input type="text" />px').attr('name', 'youtube_url').attr('size', '40');
                    this.youtube_w = $('<input type="text" />').attr('name', 'youtube_w').attr('size', '12').val("470");
                    this.youtube_h = $('<input type="text" />').attr('name', 'youtube_h').attr('size', '12').val("315");
                    //antoinek: needs to be commented out to prevent the button to be active in fullscreen mode
                    this.active = true;
                    var self = this;

                    this.command = function () {
                        var opts, d;

                        opts = {
                            rtl: rte.rtl,
                            submit: function (e, d) {
                                e.stopPropagation();
                                e.preventDefault();
                                d.close();
                                self.set($("input[name=youtube_url]").val(), $("input[name=youtube_w]").val(), $("input[name=youtube_h]").val());
                            },
                            dialog: {
                                width: 460,
                                title: this.rte.i18n('Insert YouTube video')
                            }
                        }

                        this.rte.selection.saveIERange();
                        d = new elDialogForm(opts);
                        d.append('<br/><h3>You tube url example (http://www.youtube.com/watch?v=Ew5zkL0WvVI)</h3>');
                        d.append([this.rte.i18n('Youtube URL'), this.youtube_url], null, true)
                        d.append([this.rte.i18n('Width'), $('<span />').append(this.youtube_w).append(' px')], null, true)
                        d.append([this.rte.i18n('Height'), $('<span />').append(this.youtube_h).append(' px')], null, true)
                        d.open();
                        this.rte.ui.update(true);
                    }

                    this.update = function () {
                        this.domElem.removeClass('disabled active');
                    }

                    this.set = function (url, w, h) {
                        var getTubeID = function (url, gkey) {
                            var returned = null;
                            if (url.indexOf("?") != -1) {
                                var list = url.split("?")[1].split("&"),
                                        gets = [];

                                for (var ind in list) {
                                    var kv = list[ind].split("=");
                                    if (kv.length > 0)
                                        gets[kv[0]] = kv[1];
                                }
                                returned = gets;

                                if (typeof gkey != "undefined")
                                    if (typeof gets[gkey] != "undefined")
                                        returned = gets[gkey];
                            }

                            return returned;
                        }

                        var toinsert = '<iframe width="' + w + '" height="' + h + '" src="http://www.youtube.com/embed/' + getTubeID(url, "v") + '?wmode=transparent" frameborder="0" allowfullscreen></iframe>';
                        this.rte.history.add();
                        this.rte.selection.insertHtml(toinsert);
                    }
                }
            })(jQuery);
            function initEditor() {
                var opts = {
                    height: 350,
                    panels: {
                        cp: ['pastetext', 'removeformat'],
                        heading: ['formatblock'],
                        font: ['fontsize', 'youtube', 'image']
                    },
                    toolbars: {
                        newToolbar: ["copypaste", "undoredo", "style", "alignment", "colors", "format", "indent", "lists", "links", "elements", "font", "fullscreen"]
                    },
                    toolbar: 'newToolbar',
                    cssfiles: ['${baseURL}/resources/widget/elRTE-stable/css/elrte-inner.css'],
                    lang: 'ru'
                };
                elRTE.prototype.options.buttons.youtube = 'Insert Youtube video';

                if ($('#editor').parents('.addChart').css('display') != 'none') {
                    $('#editor').elrte(opts);
                    $('.youtube').attr('id', 'youtube');
                }

                if ($('#editorEvents').parents('.addEvent').css('display') != 'none') {
                    $('#editorEvents').elrte(opts);
                    $('.youtube').attr('id', 'youtube');
                }
            }

            function initEditor2() {
                var opts = {
                    cssClass: 'el-rte',
                    lang: 'ru',
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