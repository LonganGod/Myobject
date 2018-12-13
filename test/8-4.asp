
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <H2 align="center">文件已安全上传</H2>
    <center>
        <%
            Set Upload = Server.CreateObject("Persits.Upload.1")
            Upload.SetMaxSize 2*1024*1024,False
            Upload.OverwriteFiles=True
            Upload.Save "F:\myObject\test"

            response.Write Upload.Form("author")
            response.Write Upload.Form("author1")
            response.Write Upload.Form("author2")
            response.Write Upload.Form("author3")
            response.Write Upload.Form("author4")
        %>
    </center>
</body>

</html>