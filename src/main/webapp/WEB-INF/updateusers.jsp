<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Register For Our Site!" />
        </jsp:include>
    </head>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarRegister.jsp"/>
<div class="container">
    <h1>Please Log In</h1>
    <form action ="/updateuser" method="POST">
        <div class="=form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>
