<%--
  Created by IntelliJ IDEA.
  User: adrianperez
  Date: 10/25/17
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Mr. Adlister"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="main-display">
        <h2 class="title-text"> WELCOME TO THE DAB-LISTER</h2>
        <iframe src="https://giphy.com/embed/l378qGxjJ9jWIMs9y" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p></p>


        <a class="reg-sign button_color" href="/login"><button role="button" class=" btn btn-primary btn-lg center-block "> Login</button></a>

        <a class="reg-sign button_color" href="/register"><button role="button" class=" btn btn-Success btn-lg center-block">
            Register</button></a>
    </div>
</div>
</body>
<footer>
    <div class="footer"><p> All rights reserved by B-A-D productions <span class="glyphicon glyphicon-thumbs-up"></span>
    </p></div>
</footer>
</html>
