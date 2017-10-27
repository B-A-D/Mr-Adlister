<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include>
</head>
<body>


<jsp:include page="/WEB-INF/partials/navbarListedAds.jsp" />
<div class="container">
    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<c:when test="${ad.id} eq <%= request.getParameter("id") %>">--%>
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
    <p>${ad.date_time}</p>
    <%--</c:when>--%>
    <%--</c:forEach>--%>
</div>
</body>
</html>
