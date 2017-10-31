<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">Dab-Lister</a>
        </div>
        <jsp:include page="navSearchTemplate.jsp"/>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/ads"><span class="glyphicon glyphicon-tags"></span> All Ads </a></li>
            <li><a href="ads/create"><span class="glyphicon glyphicon-pencil"></span> Create an ad </a></li>
            <li><a href="/updateuser"><span class ="glyphicon glyphicon-wrench"></span> Update user</a></li>
            <li><a href="/about"><span class="glyphicon glyphicon-heart-empty"></span> About Us</a></li>
            <li><a href="/logout"><span class="glyphicon glyphicon-off"></span>
                Logout </a></li>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
