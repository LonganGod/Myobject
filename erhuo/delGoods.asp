<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理闲置</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        goodsID = request("goodsID")
        response.Write goodsID
        str = "DELETE FROM erhuo.goods WHERE GoodsID =" & goodsID
        conn.execute str
        response.Write "<script>location.href='GoodsList.asp';</script>" 
    %>
</body>
</html>