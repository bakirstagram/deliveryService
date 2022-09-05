<#macro page>
    <div class="container">
        <header class="d-flex justify-content-center py-3">
            <ul class="nav nav-pills">
                <li class="nav-item"  style="margin-inline: 25px">
                    <div>
                        <a href="/">
                            <img src="/static/images/home64.png" alt="home" title="home" width="32"
                                 height="32"
                                 class="ui-icon-person">
                        </a>
                    </div>
                </li>
                <li class="nav-item"  style="margin-inline: 25px">
                    <div>
                        <a href="/delivery">
                            <img src="/static/images/delivery64.png" alt="delivery" title="delivery" width="32"
                                 height="32"
                                 class="ui-icon-person">
                        </a>
                    </div>
                </li>
                <li class="nav-item"  style="margin-inline: 25px">
                    <div>
                        <a href="#">
                            <img src="/static/images/cart64.png" alt="cart" title="cart" width="32" height="32"
                                 class="ui-icon-person">
                        </a>
                    </div>
                </li>

                <li class="nav-item"  style="margin-inline: 25px">
                    <div>
                        <a href="#">
                            <img src="/static/images/about64.png" alt="about" title="about" width="32" height="32"
                                 class="ui-icon-person">
                        </a>
                    </div>
                </li>
                <form action="/" method="get"  style="margin-inline: 25px">
                    <input style="margin-left: 30px; margin-right: 20px; width: 200px" type="search"
                           class="form-control" name="title" placeholder="Search..." aria-label="Search">
                </form>
                <#if user.email??>
                    <form action="/sell" method="get"  style="margin-inline: 15px">
                        <li class="nav-item"><a href="/sell" class="btn btn-primary">Продать</a></li>
                    </form>
                    <div>
                        <a href="/profile"  style="margin-inline: 25px;">
                            <img src="/static/images/icon3.png" alt="profile" style="margin-top: 2.5px" title="profile" width="32" height="32"
                                 class="ui-icon-person">
                        </a>
                    </div>

                <#else>
                    <form action="/login" method="get"  style="margin-inline: 15px">
                        <button type="submit" class="btn btn-primary" style="margin-left: 10px">Sign in</button>
                    </form>
                </#if>

            </ul>
        </header>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
                integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
                crossorigin="anonymous"></script>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>


</#macro>