<#import "blocks/common.ftl"as c />
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Delivery Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href=".../static/css/style.css" type="text/css">
</head>
<body>
<div class="modal-header">
    <@c.page></@c.page>
</div>


<div class="container my-5">
    <div class="card-deck">
        <#list products as product>
        <a href="/product/${product.id}" class="product-link">
            <div class="card my-3 mx-4" style="width: 350px; margin-inline: 8px; display: inline-block">
                <img class="card-img-top" src="/images/${product.previewImageId}" alt="Card image cap"
                     width="120px" height="230px">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                </div>
            </div>
        </a>
        </#list>

    </div>
</div>
</body>
</html>