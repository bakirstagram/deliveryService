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

<div class="container" style="text-align: left">
    <h1 style="text-align: center">Мои товары</h1>
    <hr>
    <a class="btn btn-dark my-3 mx-2" style="text-align: center;"
       data-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="true" aria-controls="collapseExample">
        Добавить товар
    </a>
    <div class="d-flex justify-content-center">
    <div class="collapse mb-3" id="collapseExample" style="width: 50%">
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="tab-content">
                <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                    <!-- Name input -->
                    <div class="form-outline mb-4">
                        <label for="registerName"></label><input type="text" name="title" id="registerName"
                                                                 class="form-control" placeholder="Title">
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" name="description" id="registerName" class="form-control"
                               placeholder="Description">
                    </div>
                    <div class="form-outline mb-4">
                        <input type="number" name="price" id="registerName" class="form-control" placeholder="Price">
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" name="city" id="registerName" class="form-control" placeholder="City">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">

                    <!-- INPUT FILE -->

                    <div class="mb-3">
                        <label for="formFile" class="form-label">Preview image file</label>
                        <input class="form-control" type="file" name="file1" id="formFile">
                    </div>
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Second Additional File</label>
                        <input class="form-control" type="file" name="file2" id="formFile">
                    </div>
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Third Additional File</label>
                        <input class="form-control" type="file" name="file3" id="formFile">
                    </div>
                    <!-- Submit button -->
                    <button type="submit" class="btn btn-success btn-block mb-3">Create</button>
                </div>
            </div>
        </form>
    </div>
    </div>
</div>


<#--    <div class="container my-5">-->
<#--        <div class="card-deck">-->
<#--            <#list products as product>-->
<#--                <a href="/product/${product.id}" class="product-link">-->
<#--                    <div class="card" style="width: 350px; margin-inline: 8px; display: inline-block">-->
<#--                        <img class="card-img-top" src="/images/${product.previewImageId}" alt="Card image cap">-->
<#--                        <div class="card-body">-->
<#--                            <h5 class="card-title">Card title</h5>-->
<#--                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to-->
<#--                                additional content. This content is a little bit longer.</p>-->
<#--                        </div>-->
<#--                        <div class="card-footer">-->
<#--                            <small class="text-muted">Last updated 3 mins ago</small>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </a>-->
<#--            </#list>-->

<#--        </div>-->
<#--    </div>-->
<div class="container">
    <div class="card-columns my-5">
        <#list products as product>
            <a href="/product/${product.id}">
                <div class="card" style="width: 350px; margin-inline: 8px; display: inline-block; text-align: left">
                    <div class="card-top">
                        <form action="/product/delete/${product.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                Удалить
                            </button>
                        </form>
                    </div>
                    <img src="/images/${product.previewImageId}"
                         class="card-img-top" width="120px" height="250px">
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
</body>
</html>