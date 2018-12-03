<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>发布闲置</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        phone = request("phone")
        title = request("title")
        money1 = request("money1")
        money2 = request("money2")
        describe = request("describe")
        goodstype = request("goodstype")
        situation = request("situation")
        goodsPhoto1 = request("goodsPhoto1")
        goodsPhoto2 = request("goodsPhoto2")
        goodsPhoto3 = request("goodsPhoto3")
        goodsPhoto4 = request("goodsPhoto4")
        goodsPhoto5 = request("goodsPhoto5")
        userName = request("userName")
        phoneNum = request("phoneNum")
        QQ = request("QQ")
        place = request("place")

        response.Write goodstype 

        str = "insert into Goods(UserPhone, GoodsTitle, GoodsMoney1, GoodsMoney2, GoodsDescribe, GoodsType, GoodsSituation, GoodsImg1, GoodsImg2, GoodsImg3, GoodsImg4, GoodsImg5, GoodsUserName, GoodsUserPhone, GoodsUserQQ, GoodsUserPlace, GoodsData) values('" & phone & "', '" & title & "', '" & money1 & "', '" & money2 & "', '" & describe & "', '" & goodstype & "', '" & situation & "', '" & goodsPhoto1 & "', '" & goodsPhoto2 & "', '" & goodsPhoto3 & "', '" & goodsPhoto4 & "', '" & goodsPhoto5 & "', '" & userName & "', '" & phoneNum & "', '" & QQ & "', '" & place & "', '" & date() & "')"
        conn.execute(str)
        response.Write "<script>location.href='myGoods.asp';</script>" 
    %>
</body>
</html>
