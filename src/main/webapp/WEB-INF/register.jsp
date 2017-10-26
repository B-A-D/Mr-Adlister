<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarRegister.jsp"/>

<div class="container">
    <h1>Please fill in your information</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control">
            <c:if test = "${error != null}">
                <p class="error">
                        ${error}
                </p>
            </c:if>
            <c:if test = "${Errors.containsKey('username')}">
                <p class="error"> ${Errors.get('username')}</p>
            </c:if>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control">
            <c:if test = "${Errors.containsKey('email')}">
                <p class="error"> ${Errors.get('email')}</p>
            </c:if>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
            <c:if test = "${Errors.containsKey('password')}">
                <p class="error"> ${Errors.get('password')}</p>
            </c:if>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            <c:if test = "${Errors.containsKey('password_confirm')}">
                <p class="error"> ${Errors.get('password_confirm')}</p>
            </c:if>
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>
