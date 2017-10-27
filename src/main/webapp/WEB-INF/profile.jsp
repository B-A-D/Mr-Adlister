<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarProfile.jsp" />

<div class="container">
    <h1>Welcome ${sessionScope.user.username}, here are all your currently listed Ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-3">
            <a href="/ads/id?id=${ad.id}"><h2>${ad.title}</h2></a>
            <%--Replace the '#' with the servlet link to search based on id.--%>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>
</body>
</html>
