<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ads"/>
    </jsp:include>

</head>
<body>


<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<c:when test="${ad.id} eq <%= request.getParameter("id") %>">--%>

        <div class="main-display">


            <div class="row">
            <div class="col-md-4 col-md-offset-4 ads">
                <h1>${ad.title}</h1>
                <p>${ad.description}</p>
                <p class="purple-text">Category: ${ad.category}</p>
                <p class="createdDate">${ad.date_time}</p>
            </div>
        </div>
            <div class="row">
                <div class="col-md-8 col-md-offset-2" id="ads">
                <div class="image_box"></div>
                </div>
            </div>
    </div>

    <%--</c:when>--%>
    <%--</c:forEach>--%>
</div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
<script src="../../js/image-generator.js"></script>
</body>
</html>
