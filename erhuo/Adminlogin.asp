<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理员登录</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        adminName = request("adminName")
        psw = request("psw")

        set rs = server.createobject("adodb.recordset")
        strSQL = "select * from erhuo.Administrator where AdminID = '" & adminName & "' and Password = '" & psw & "'"
        rs.open strSQL, conn, 1, 1 

        if not rs.eof then

        response.Write "<script>location.href='GoodsList.asp';</script>"
        else
        response.Write "<script>alert('登录失败，用户名或密码错误');location.href='Administratorlogin.html';</script>"
        end if
        rs.close
        set rs=nothing
    %>
</body>
</html>

