<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <div class="main-display">
        <h1 class="title-text">Welcome ${sessionScope.user.username}, here are all your currently listed Ads!</h1>
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-3">
                    <div class="ads">
                        <a class="purple-text" href="/ads/id?id=${ad.id}"><h2>${ad.title}</h2></a>
                            <%--Replace the '#' with the servlet link to search based on id.--%>
                        <p class="purple-text">Category: ${ad.category}</p>

                        <p>${ad.description}</p>
                        <span class="delete"><a class="purple-text glyphicon glyphicon-trash" href="/delete?id=${ad.id}">Delete
                        </a></span>
                        <a class="purple-text glyphicon glyphicon-edit" href="/ads/updateAd?id=${ad.id}">Edit</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<jsp:include page="partials/scripts.jsp"/>
</body>
</html>
