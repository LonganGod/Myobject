<!--#include file="conn.asp"-->
<%
    phone = session("phone")

    set rs = server.createobject("adodb.recordset")
    strsql = "select * from erhuo.UserInfo where UserPhone = '" & phone & "'"
    rs.open strsql, conn, 1, 1 

    if session("user")="logined" then
%>
<script>
    var login_a = document.querySelector('.top .right a');
    var str = '<a href="./userData.asp"><%=server.htmlencode(rs("userName"))%></a>';
    login_a.innerHTML = str;
</script>
<%
    else
%>
<script>
    parent.location.href="login.html";
</script>
<%
    end if
%>