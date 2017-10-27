<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarLogin.jsp"/>
<div class="container">
    <div class="form">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group form-field">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group form-field">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="row">
                <div class="col-xs-6 col-xs-offset-3">
            <input type="submit" class="login-btn btn btn-primary">
                </div>
            </div>
        </form>
    </div>
    <div class="register-here">
    <h1 class="signup">Not a Member? Sign Up!</h1>
    <button type="button" class="register-btn btn btn-Success btn-lg center-block"><a href="/register"> Register</a></button>
</div>
</div>
</body>
</html>
