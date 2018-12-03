<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>注册页面</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        phone = request("phone")
        userName = request("userName")
        psw = request("psw")

        set rs = server.createobject("adodb.recordset")
        strSQL = "select * from User where UserPhone = '" & phone & "'"
        rs.open strSQL, conn, 1, 1 

        if not rs.eof then
        response.Write "<script>alert('注册失败，该用户名已存在，请重新输入');location.href='regist.html';</script>"
        else
        str1 = "insert into User(UserPhone, Password) values('" & phone & "', '" & psw & "')"
        str2 = "insert into UserInfo(UserPhone, Userphoto, UserName, UserSex, UserSignature, UserQQ, UserPlace, UserData) values('" & phone & "', '', '" & userName & "', '', '', '', '', '" & date() & "')"
        conn.execute(str1)
        conn.execute(str2)
        response.Write "<script>alert('注册成功，点击确定跳转到登录页面');location.href='login.html';</script>"
        end if
        rs.close
        set rs=nothing
    %>
</body>
</html>
