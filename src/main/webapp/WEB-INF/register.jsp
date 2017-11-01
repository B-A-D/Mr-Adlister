<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <div class="form">
        <h1>Please fill in your information</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" value="${username}">
                <c:if test="${error != null}">
                    <p class="error">
                            ${error}
                    </p>
                </c:if>
                <c:if test="${Errors.containsKey('username')}">
                    <p class="error"> ${Errors.get('username')}</p>
                </c:if>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" value="${email}">
                <c:if test="${Errors.containsKey('email')}">
                    <p class="error"> ${Errors.get('email')}</p>
                </c:if>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
                <c:if test="${Errors.containsKey('password')}">
                    <p class="error"> ${Errors.get('password')}</p>
                </c:if>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                <c:if test="${Errors.containsKey('password_confirm')}">
                    <p class="error"> ${Errors.get('password_confirm')}</p>
                </c:if>
            </div>
            <div class="row">
                <div class="col-xs-6 col-xs-offset-3">
                    <button role="button" class="login-btn btn">Register</button>
                </div>
            </div>
        </form>
            <form action="login">
                <div class="row">
                    <h1 class="signup">Already a Member?</h1>
                    <button role="button" class="register-btn btn btn-success btn-lg center-block">
                        Login
                    </button>
                </div>
            </form>


    </div>
</div>

</body>
</html>
