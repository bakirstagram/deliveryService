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
<#list orders as order>
    <p>${order.adress}</p>
    <p>${order.goods}</p>
    <p>${order.city}</p>
    <p>${order.phoneNumber}</p>
    <p>${order.weight}</p>
    <p>${order.description}</p>
</#list>

</body>
</html>