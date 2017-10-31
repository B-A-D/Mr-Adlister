<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarProfile.jsp"/>

<div class="container">
    <div class="main-display">
        <h1 class="title-text">Welcome ${sessionScope.user.username}, here are all your currently listed Ads!</h1>
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-3">
                    <div class="ads">
                        <a class="purple-text" href="/ads/id?id=${ad.id}"><h2>${ad.title}</h2></a>
                            <%--Replace the '#' with the servlet link to search based on id.--%>
                        <p>${ad.description}</p>
                        <a class="glyphicon glyphicon-trash" href="/delete?id=${ad.id}">Delete
                        </a>
                        <a class="glyphicon glyphicon-edit" href="/ads/updateAd?id=${ad.id}">Edit

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
