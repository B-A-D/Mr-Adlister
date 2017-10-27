<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarListedAds.jsp" />
<div class="container">
    <h1>Here are all the ads!</h1>
    <div class="col-md-3">
    <c:forEach var="ad" items="${ads}">
        <h3>${ad.title}</h3>
        <p>${ad.description}</p>
    </c:forEach>
    </div>
</div>

</body>
</html>
