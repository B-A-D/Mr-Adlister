<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarListedAds.jsp"/>
<div class="container">
    <div class="main-display">
        <div class="row">
            <h1>Here are all the ads!</h1>
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-3">
                    <div class="ads">
                        <a href="/ads/id?id=${ad.id}">
                            <h2>${ad.title}</h2>
                        </a>
                        <p>${ad.description}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
