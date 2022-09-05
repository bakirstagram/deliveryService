<#import "blocks/common.ftl" as c/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<@c.page>

</@c.page>
</div>
<#--            ANOTHER CODE        -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container my-5">
    <div class="row">
        <div class="profile-nav col-md-3">
            <div class="shadow shadow-sm" style="background-color: #6f6bff;">
                <div class="panel" style="color: black">
                    <div class="user-heading round">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active p-3" id="one" role="tabpanel" aria-labelledby="one-tab">
                                <h5 class="card-title">Email</h5>
                                <#if user.isAdmin()>
                                    email doesn't exists!
                                <#else>
                                    <p class="card-text">${user.email}</p>
                                </#if>

                            </div>
                            <div class="tab-pane fade show active p-3" id="two" role="tabpanel" aria-labelledby="two-tab">
                                <h5 class="card-title">Phone</h5>
                                <p class="card-text">${user.phoneNumber}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="profile-info col-md-9">
            <div class="panel">
                <div class="card-columns">
                    <#list products as product>
                        <a href="/product/${product.id}">
                            <div class="card" style="width: 350px; margin-inline: 8px; margin-bottom: 5px; display: inline-block; text-align: left">

                                <img src="/images/${product.previewImageId}"
                                     class="card-img-top" width="120px" height="200px">
                                <div class="card-body">
                                    <p class="card-title"><span class="text-muted">Название: </span>${product.title}</p>
                                    <hr>
                                    <p class="card-text"><span class="text-muted">Цена: <b>${product.price} $</b></span></p>
                                </div>
                                <div class="card-footer">
                                    <span class="text-muted">Город: </span><b>${product.city}</b>
                                </div>
                            </div>
                        </a>
                    <#else>
                        <h1 style="text-align: center">Не найдено</h1>
                    </#list>
                </div>
        </div>
    </div>
</div>
</div>

<#--            CSS         -->
<style>
    body {
        font-family: 'Open Sans', sans-serif;
        padding: 0px !important;
        margin: 0px !important;
        font-size: 13px;
        text-rendering: optimizeLegibility;
        -webkit-font-smoothing: antialiased;
        -moz-font-smoothing: antialiased;
    }

    .profile-nav, .profile-info{
        margin-top:30px;
    }

    .profile-nav .user-heading {
        color: #fff;
        border-radius: 4px 4px 0 0;
        -webkit-border-radius: 4px 4px 0 0;
        padding: 30px;
        text-align: center;
    }

    .profile-nav .user-heading.round a  {
        border-radius: 50%;
        -webkit-border-radius: 50%;
        border: 10px solid rgba(255,255,255,0.3);
        display: inline-block;
    }

    .profile-nav .user-heading a img {
        width: 112px;
        height: 112px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
    }

    .profile-nav .user-heading h1 {
        font-size: 22px;
        font-weight: 300;
        margin-bottom: 5px;
    }

    .profile-nav .user-heading p {
        font-size: 12px;
    }
    .bio-graph-info h1 {
        font-size: 22px;
        font-weight: 300;
        margin: 0 0 20px;
    }

    .bio-row p span {
        width: 100px;
        display: inline-block;
    }


    .bio-desk h4 {
        font-size: 15px;
        font-weight:400;
    }

    .profile-activity h5 {
        font-weight: 300;
        margin-top: 0;
        color: #c3c3c3;
    }

</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</body>
</html>