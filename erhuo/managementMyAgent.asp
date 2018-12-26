<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理代销</title>
</head>
<body>
    <!--#include file="conn.asp"-->
    <%
        AgentID = request("AgentID")
        response.Write goodsID
        str = "DELETE FROM erhuo.Agent WHERE AgentID =" & AgentID
        conn.execute str
        response.Write "<script>location.href='agent.asp';</script>" 
    %>
</body>
</html>