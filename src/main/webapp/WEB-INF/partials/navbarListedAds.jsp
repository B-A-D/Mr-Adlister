<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">DabLister</a>
        </div>
        <form class="navbar-form navbar-left" role="search" method="get" action="/ads/search">
            <div class="form-group">
                <input name="search" id="search" type="text" class="form-control" placeholder="Search Ads">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
            <!-- Single button -->
            <div class="btn-group">
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Choose A Category <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">Weak Dabs</a></li>
                    <li><a href="#">Basic Dabs</a></li>
                    <li><a href="#">Fire Dabs</a></li>
                    <li><a href="#">God Dabs</a></li>
                </ul>
            </div>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/profile">Profile</a></li>
            <li><a href="/ads/create">Create an Ad</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>