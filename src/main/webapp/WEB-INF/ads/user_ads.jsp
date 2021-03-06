<%--
  Created by IntelliJ IDEA.
  User: adrianperez
  Date: 10/26/17
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing user Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="main-display">
    <h1 class="title-text">Here are all your ads ${sessionScope.user.username}</h1>
    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="col-xs-3">
                <div class="ads">
                    <a href="/ads/id?id=${ad.id}">${ad.title}</a>
                    <p>${ad.description}</p>
                </div>
            </div>
        </c:forEach>
    </div>
    </div>
</div>

</body>
</html>
