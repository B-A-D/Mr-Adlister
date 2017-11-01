<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1 class="title-text">Create a New Ad</h1>
    <form action="/ads/create" method="post" class="form">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${title}">
            <c:if test="${Errors.containsKey('title')}">
                <p class="error">${Errors.get('title')}</p>
            </c:if>
        </div>
        <label for="category">Choose a category</label>
        <select id="category" name="category" class="form-control">
            <option value="0">Pick a Dab!</option>
            <option value="Weak Dabs">Weak Dabs</option>
            <option value="Basic Dabs">Basic Dabs</option>
            <option value="Fire Dabs">Fire Dabs</option>
            <option value="God Dabs">God Dabs</option>
        </select>
        <c:if test="${Errors.containsKey('category')}">
            <p class="error"> ${Errors.get('category')}</p>
        </c:if>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${desscription}</textarea>
<c:if test="${Errors.containsKey('description')}">
    <p class="error"> ${Errors.get('description')}</p>
</c:if>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
