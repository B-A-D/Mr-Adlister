<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">DabLister</a>
        </div>

        <form class="navbar-form navbar-left" role="search" method="get" action="/ads/search">
            <div class="form-group">
                <input name="search" type="text" class="form-control" placeholder="Search by Ads">
            </div>
            <%--<button type="submit" class="btn btn-default">Submit</button>--%>
        </form>
        <form class="navbar-form navbar-left" role="search" method="get" action="/ads/user">
            <div class="form-group">
                <input type="text" class="form-control"  name="username" placeholder="Search by Username">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout">Logout</a></li>
            <li><a href="/ads">All Ads</a></li>
            <li><a href="ads/create">Create an ad</a></li>
            <li><a href="/about">About Us</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
