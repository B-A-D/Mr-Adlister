<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarCreate.jsp"/>
<div class="container">
    <h1 class="title-text">Update your Ad</h1>
    <form action="/ads/updateAd" method="post" class="form">
        <div class="form-group">
            <input type="hidden" name="id" value="${ad.id}">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" value="${ad.title}" type="text">
        </div>
        <label for="category">Choose a category</label>
        <select id="category" name="category" class="form-control">
            <option ${ad.category == 'Weak Dabs' ? 'selected' : ''} value="Weak Dabs">Weak Dabs</option>
            <option ${ad.category == 'Basic Dabs' ? 'selected' : ''} value="Basic Dabs">Basic Dabs</option>
            <option ${ad.category == 'Fire Dabs' ? 'selected' : ''} value="Fire Dabs">Fire Dabs</option>
            <option ${ad.category == 'God Dabs' ? 'selected' : ''} value="God Dabs">God Dabs</option>

        </select>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
