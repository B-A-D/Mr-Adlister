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
        <jsp:param name="title" value="Viewing All Ads From ${sessionScope.user}" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Here are all your ads!</h1>
    <c:forEach var="ad" items="${ads}">
        <c:if test="${ad.id}">
        <div class="col-md-3">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
        </c:if>
    </c:forEach>

</div>

</body>
</html>
