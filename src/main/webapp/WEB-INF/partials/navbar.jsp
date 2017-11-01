<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">Dab-Lister</a>
        </div>
        <jsp:include page="catSearch.jsp"/>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/ads"><span class="glyphicon glyphicon-tags"></span> All Ads </a></li>


            <c:choose>
                <c:when test="${(sessionScope.user!=null)}">
                    <li><a href="ads/create"><span class="glyphicon glyphicon-pencil"></span> Create an ad </a></li>
                    <li><a href="/updateuser"><span class="glyphicon glyphicon-wrench"></span> Update Email</a></li>
                    <li><a href="/logout"><span class="glyphicon glyphicon-off"></span>
                        Logout </a></li>
                </c:when>

                <c:otherwise>
                    <li><a href="/login"><span class="glyphicon glyphicon-triangle-right"></span> Login</a></li>
                    <li><a href="/logout"><span class="glyphicon glyphicon-globe"></span> Register</a></li>
                </c:otherwise>

            </c:choose>

            <li><a href="/about"><span class="glyphicon glyphicon-heart-empty"></span> About Us</a></li>


        </ul>
    </div><!-- /.navbar-collapse --><!-- /.container-fluid -->
</nav>
