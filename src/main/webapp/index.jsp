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
        <jsp:param name="title" value="Mr. Adlister" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarRegister.jsp"/>
<div class="container">
    <div class="main-display">
    <h2 class="title-text"> WELCOME TO THE DAB-LISTER</h2>
    <iframe src="https://giphy.com/embed/eOOcHWaaJnTwc" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/dab-dabbing-on-em-eOOcHWaaJnTwc"></a></p>
<button type="button" class="custom-btn btn btn-primary btn-lg center-block"><a class="reg-sign" href="/login"> Login</a></button>
<button type="button" class="custom-btn btn btn-Success btn-lg center-block"><a class="reg-sign" href="/register"> Register</a></button>
</div>
</div>
</body>
</html>
