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
        userPhoto = request("userPhoto")
        userName = request("userName")
        phoneNum = request("phoneNum")
        sex = request("sex")
        describe = request("describe")
        QQ = request("QQ")
        place = request("place")

        str = "update UserInfo set Userphoto = '" & userPhoto & "', UserName = '" & userName & "', UserSex = '" & sex & "', UserSignature = '" & describe & "', UserQQ = '" & QQ & "', UserPlace = '" & place & "' where UserPhone = '" & phoneNum & "'"
        conn.execute str

        response.Write "<script>location.href='userData.asp';</script>"
    %>
</body>
</html>

