<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>我要代销</title>
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

        str = "insert into Agent(UserPhone, AgentTitle, AgentMoney1, AgentMoney2, AgentDescribe, AgentType, AgentSituation, AgentImg1, AgentImg2, AgentImg3, AgentImg4, AgentImg5, AgentUserName, AgentUserPhone, AgentUserQQ, AgentUserPlace, AgentData) values('" & phone & "', '" & title & "', '" & money1 & "', '" & money2 & "', '" & describe & "', '" & goodstype & "', '" & situation & "', '" & goodsPhoto1 & "', '" & goodsPhoto2 & "', '" & goodsPhoto3 & "', '" & goodsPhoto4 & "', '" & goodsPhoto5 & "', '" & userName & "', '" & phoneNum & "', '" & QQ & "', '" & place & "', '" & date() & "')"
        conn.execute(str)
        response.Write "<script>alert('提交成功！！请等待审核。');location.href='index.asp';</script>" 
    %>
</body>
</html>