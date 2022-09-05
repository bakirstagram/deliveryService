<#import "blocks/common.ftl" as c/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery Service</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<@c.page></@c.page>
    <div class="bg-white border rounded-5">

        <section class="w-100  p-4" style="background-color: #eee; border-radius: .5rem .5rem 0 0;">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="card" style="border-radius: 15px;">
                        <div class="bg-image hover-overlay ripple ripple-surface ripple-surface-light"
                             data-mdb-ripple-color="light">
                            <img src="/images/${product.previewImageId}"
                                 style="width: 100%;border-top-left-radius: 10px; border-top-right-radius: 15px;" class="img-fluid"
                                 alt="${product.title}">
                        </div>
                        <div class="card-body pb-0">
                            <div>
                                <p class="text-dark"><span class="text-muted">Название: <b>${product.title}</b></span></p>
                                <p class="text-dark"><span class="text-muted">Цена: <b>${product.price}$</b></span></p>
                            </div>
                        </div>
                        <hr class="my-0">
                        <div class="card-body pb-0">
                            <p class="text-dark"><span class="text-muted">Город: <b>${product.city}</b></span></p>
                            <#if user.email??>
                            <p class="text-dark"><span class="text-muted">Продавец:</span><a href="/user/${product.user.id}"><span class="btn btn-danger mx-2"><b> ${product.user.name}</b></span></a></p>
                            </#if>
                        </div>
                        <hr class="my-0">
                        <div class="card-body pb-0">
                            <span class="text-muted">Описание: </span><p class="text-dark">${product.description}</p>
                        </div>
                        <hr class="my-0">
                        <div class="card-body">
                            <div align="center">
                                <button type="button" class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
</body>
</html>