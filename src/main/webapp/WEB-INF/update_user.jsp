<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarRegister.jsp"/>

<div class="container">
    <div class="form">
        <h1>Please Update your information</h1>
        <form action="/updateuser" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" value="${email}">
                <c:if test="${error != null}">
                    <p class="error">
                            ${error}
                    </p>
                </c:if>
                <label for="confirm-email">Confirm Email</label>
                <input id="confirm-email" name="confirm-email" class="form-control">
                <c:if test="${error2 != null}">
                    <p class="error">
                            ${error2}
                    </p>
                </c:if>
            </div>
            <div class="row">
                <div class="col-xs-6 col-xs-offset-3">
                    <button role="button" class="login-btn btn btn-primary">Update</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>