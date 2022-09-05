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
    <@c.page>

    </@c.page>
</div>
<h4>Панель администратора</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Активность</th>
        <th>Роли</th>
        <th>Бан</th>
        <th>Редактирование</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as u>
        <tr>
            <th>${u.email}</th>
            <th>${u.phoneNumber}</th>
            <th><#if u.active>true<#else>false</#if></th>
            <th><#list u.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${u.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form>
            </th>
            <th><a href="/admin/user/edit/${u.id}">Редактировние</a></th>
            <th><a href="/user/${u.id}">Подробная информация</a></th>
        </tr>
    <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>
</body>
</html>