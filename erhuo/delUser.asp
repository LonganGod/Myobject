<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理人员</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        userphone = request("userphone")
        str = "DELETE FROM erhuo.userinfo WHERE UserPhone =" & userphone
        str1 = "DELETE FROM erhuo.User WHERE UserPhone =" & userphone
        conn.execute str
        conn.execute str1
        response.Write "<script>location.href='UserManagement.asp';</script>" 
    %>
</body>
</html>