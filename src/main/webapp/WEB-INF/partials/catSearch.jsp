<form class="navbar-form navbar-left" role="search" method="post" action="/ads/search">
    <div class="form-group">
        <input type="text" class="form-control" name="search" placeholder="Search">
    </div>
    <%--<button type="submit" class="btn btn-default">Submit</button>--%>

    <div class="form-group">
        <input type="text" class="form-control"  name="username" placeholder="Search by Username">
    </div>

    <select id="category" name="category" class="form-control">
        <option value="0">All Dabs</option>
        <option value="Weak Dabs">Weak Dabs</option>
        <option value="Basic Dabs">Basic Dabs</option>
        <option value="Fire Dabs">Fire Dabs</option>
        <option value="God Dabs">God Dabs</option>
    </select>
    <button type="submit" class="btn btn-default">Submit</button>
</form>