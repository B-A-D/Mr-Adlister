<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">DabLister</a>
        </div>
        <jsp:include page="navSearchTemplate.jsp"/>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/profile"><span class ="glyphicon glyphicon-user"></span> Profile</a></li>
            <li><a href="/ads/create"><span class ="glyphicon glyphicon-pencil"></span> Create an Ad</a></li>
            <li><a href="/logout"><span class ="glyphicon glyphicon-off"></span> Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>