<#import "blocks/common.ftl" as c/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <header class="d-flex justify-content-center py-3">
        <ul class="nav nav-pills">
            <li class="nav-item"><a href="/" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Delivery Service</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Cart</a></li>

            <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        </ul>
    </header>
</div>

<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 mb-3">Vertically centered hero sign-up form</h1>
            <p class="col-lg-10 fs-4">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it. <small class="text-muted"><a href="/registration">Create an account</a></small></p>


        </div>

        <div class="col-md-10 mx-auto col-lg-5">
            <form action="/login" method="post" class="p-4 p-md-5 border rounded-3 bg-light">
                <div class="form-floating mb-3">
                    <input type="email" name="username" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput" class="text-muted">Email address</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword" class="text-muted">Password</label>
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
                <hr class="my-4">
                <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
            </form>
        </div>

    </div>
</div>
</body>
</html>