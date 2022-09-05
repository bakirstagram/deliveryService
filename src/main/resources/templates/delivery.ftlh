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
<div class="container">
    <h1 style="text-align: center">Доставка между городами</h1>
    <div class="d-flex justify-content-center py-3 my-5">

        <form action="/delivery/order/create" method="post" enctype="multipart/form-data">

            <div style="width: 40rem;">

                <br>

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                        <div class="form-outline mb-4">
                            <input type="text" name="adress" id="registerName" class="form-control"
                                   placeholder="Адрес доставки">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="text" name="goods" id="registerName" class="form-control" placeholder="Товары">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="text" name="city" id="registerName" class="form-control" placeholder="Город">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="number" name="phoneNumber" id="registerName" class="form-control"
                                   placeholder="Номер телефона">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="number" name="weight" id="registerName" class="form-control"
                                   placeholder="вес в килограммах">
                        </div>
                        <div class="form-outline mb-4">
                            <textarea name="description" id="registerName" class="form-control"
                                      placeholder="Подробное описание заказа"></textarea>
                        </div>
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="btn btn-success btn-block mb-3" style="width: 100%">Заказать
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>