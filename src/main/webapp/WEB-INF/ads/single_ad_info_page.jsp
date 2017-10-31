<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ads"/>
    </jsp:include>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../../js/image-generator.js"></script>"
</head>
<body>


<jsp:include page="/WEB-INF/partials/navbarListedAds.jsp"/>
<div class="container">
    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<c:when test="${ad.id} eq <%= request.getParameter("id") %>">--%>
    <div class="main-display">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 ads">
                <div class="image_box">

                </div>
                <h1>${ad.title}</h1>
                <p>${ad.description}</p>
                <p class="createdDate">${ad.date_time}</p>
            </div>
        </div>
    </div>

    <%--</c:when>--%>
    <%--</c:forEach>--%>
</div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
