<#import "blocks/common.ftl" as c/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<@c.page></@c.page>

<#if user.email??>
    <div class="d-flex justify-content-center py-3 my-5">

        <form action="/product/create" method="post" enctype="multipart/form-data">

            <div style="width: 40rem;">

                <h2 style="text-align: center">Добавить товар</h2>
                <br>

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                        <div class="form-outline mb-4">
                            <input type="text" name="title" id="registerName" class="form-control" placeholder="Название">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="number" name="price" id="registerName" class="form-control" placeholder="Цена">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="text" name="city" id="registerName" class="form-control" placeholder="Город">
                        </div>
                        <div class="form-outline mb-4">
                            <textarea name="description" id="registerName" class="form-control"
                                      placeholder="Описание"></textarea>
                        </div>
                        <input type="hidden" name="_csrf" value="${_csrf.token}">


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
                        <button type="submit" class="btn btn-success btn-block mb-3" style="width: 100%">Опубликовать</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</#if>
</body>
</html>




