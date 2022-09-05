<#import "blocks/common.ftl" as c/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<!-- HEADER -->
<div class="shadow-sm p-3 mb-5 bg-white rounded">
    <header class="d-flex justify-content-center py-3">
        <ul class="nav nav-pills">
            <li class="nav-item"><a href="/" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Delivery Service</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Cart</a></li>

            <li class="nav-item"><a href="#" class="nav-link">About</a></li>
<#--            <form action="/" method="get">-->
<#--                <input style="margin-left: 30px; margin-right: 20px; width: 200px" type="search"-->
<#--                       class="form-control" name="title" placeholder="Search..." aria-label="Search">-->
<#--            </form>-->
        </ul>
    </header>
</div>
<!-- CREATE AN ACCOUNT FORM-->
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">

<#--        <div class="col-lg-7 text-center text-lg-start">-->
<#--            <h1 class="display-4 fw-bold lh-1 mb-3"></h1>-->
<#--            <p class="col-lg-10 fs-4">Already have an account? </p>-->
<#--            <p class="col-lg-10 fs-4"> <a href="/login"><button class="w-100 btn btn-lg btn-primary">Log in</button></a></p>-->
<#--        </div>-->

        <div class="col-md-10 mx-auto col-lg-5">

            <form action="/registration" method="post" class="p-4 p-md-5 border rounded-3 bg-light">
                <div class="small">
                    <h4 class="text-muted" style="text-align: center; margin-bottom: 30px">Create an account</h4>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" name="name" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput" class="text-muted">Имя</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="email" name="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput" class="text-muted">Эл. почта</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="number" name="phoneNumber" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput" class="text-muted">Номер телефона</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword" class="text-muted">Пароль</label>
                </div>
<#--                <div class="checkbox mb-3">-->
<#--                    <label>-->
<#--                        <input type="checkbox" value="remember-me"> Remember me-->
<#--                    </label>-->
<#--                </div>-->
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button class="w-100 btn btn-lg btn-primary" type="submit">create account</button>
                <hr class="my-4">
                <small class="text-muted">By clicking <b><i>create</i></b>, you agree to the terms of use.</small>
                <small class="text-muted">Already have an account? <a href="/login">Log in</a></small>
            </form>
            <#if errorMessage??>
                <h2 style="color: red">${errorMessage}</h2>
            </#if>
        </div>
    </div>
</div>

<#--<form action="/registration" method="post">-->
<#--    Имя пользователя: <input type="text" name="name"><br><br>-->
<#--    Эл. почта: <input type="email" name="email"><br><br>-->
<#--    Номер телефона: <input type="text" name="phoneNumber"><br><br>-->
<#--    Пароль: <input type="password" name="password"><br><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Зарегистрироваться"/>-->
<#--</form>-->
<#--<#if errorMessage??>-->
<#--    <h2 style="color: red">${errorMessage}</h2>-->
<#--</#if>-->
</body>
</html>