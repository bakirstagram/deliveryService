<#import "blocks/common.ftl" as c/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<div>
    <@c.page></@c.page>
</div>
    <div class="container my-5">
        <div class="row">
            <div class="profile-nav col-md-3">
                <div class="shadow shadow-sm" style="background-color: #6f6bff;">
                    <div class="panel" style="color: black">
                        <div class="user-heading round">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active p-3" id="one" role="tabpanel" aria-labelledby="one-tab">
                                    <h5 class="card-title" style="text-align: center">Личная информация</h5>
                                </div>
                                <div class="tab-pane fade show active p-3" id="one" role="tabpanel" aria-labelledby="one-tab">
                                    <h5 class="card-title">Username</h5>
                                    <p class="card-text">${user.name}</p>
                                </div>
                                <div class="tab-pane fade show active p-3" id="two" role="tabpanel" aria-labelledby="two-tab">
                                    <h5 class="card-title">Email</h5>
                                    <p class="card-text">${user.email}</p>
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
                <div class="panel card-columns" style="display: block">
                    <div>
                        <#if user.isAdmin()>
                            <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
                               href="/admin">
                                Панель администратора
                            </a><br>
                        </#if>
                        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
                           href="/my/products">
                            Мои товары
                        </a>
                        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
                           href="/delivery/orders">
                            Мои заказы
                        </a>
                        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
                           href="/my/products">
                            Получить помощь
                        </a>
                        <form action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
                                Выйти из аккаунта
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>