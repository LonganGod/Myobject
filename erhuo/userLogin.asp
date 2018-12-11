<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户登录</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        phone = request("phone")
        psw = request("psw")

        set rs = server.createobject("adodb.recordset")
        strSQL = "select * from erhuo.User where UserPhone = '" & phone & "' and Password = '" & psw & "'"
        rs.open strSQL, conn, 1, 1 

        if not rs.eof then
        session("user") = "logined"
        session("phone") = phone

        response.Write "<script>location.href='index.asp';</script>"
        else
        response.Write "<script>alert('登录失败，用户名或密码错误');location.href='login.html';</script>"
        end if
        rs.close
        set rs=nothing
    %>
</body>
</html>

