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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
<a href="${baseURL}/news">Головна</a>||
<a href="${baseURL}/users/add">Зареєструватися</a>||
<a href="${baseURL}/users/list">Користувачі</a>||
${logout}
<sec:authorize access="isAnonymous()">
    <c:if test="${not empty error}">
        <div class="errorblock">
            Помилка авторизаії<br/> Caused :
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
        </div>
    </c:if>

    <form name='f' action="<c:url value='${baseURL}/j_spring_security_check' />"
          method='POST'>
        Логін: <input type='text' name='j_username' value=''> Пароль:<input
            type='password' name='j_password'/> <input name="submit"
                                                       type="submit" value="ОК"/> <input name="reset" type="reset"
                                                                                         value="скинути"/>
    </form>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <h3>Username : <sec:authentication property="principal.enabled"/> <sec:authentication
            property="principal.username"/></h3>

    <a href="<c:url value="/j_spring_security_logout" />"> Logout</a>
</sec:authorize>
</body>
</html>