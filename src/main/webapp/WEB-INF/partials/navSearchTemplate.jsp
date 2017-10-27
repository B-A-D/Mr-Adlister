<form class="navbar-form navbar-left" role="search" method="get" action="/ads/search">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
    </div>
    <%--<button type="submit" class="btn btn-default">Submit</button>--%>
</form>
<form class="navbar-form navbar-left" role="search" method="get" action="/ads/user">
    <div class="form-group">
        <input type="text" class="form-control"  name="username" placeholder="Search by Username">
    </div>
</form>
<form class="navbar-form navbar-left" role="search" method="get" action="/ads/category">
    <select id="category" name="category" class="form-control">
        <option>Weak Dabs</option>
        <option>Basic Dabs</option>
        <option>Fire Dabs</option>
        <option>God Dabs</option>
    </select>
    <button type="submit" class="btn btn-default">Submit</button>
</form>