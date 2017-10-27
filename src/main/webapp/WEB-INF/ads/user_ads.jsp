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
        <jsp:param name="title" value="Viewing user Ads" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Here are all your ads ${sessionScope.user.username}</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-3">
            <h3>${ad.title}</h3>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>

</body>
</html>
