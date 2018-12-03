<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
set conn=Server.Createobject("adodb.Connection") 
str="dsn=conn;Driver={mysql driver};server=127.0.0.1;uid=root;pwd=00000000;database=erhuo"
conn.open(str)
%>