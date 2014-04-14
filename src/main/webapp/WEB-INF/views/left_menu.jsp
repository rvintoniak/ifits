<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<body>
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
</body>
</html>
