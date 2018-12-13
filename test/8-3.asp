<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <H2 align="center">上传一个文件</H2>
    <center>
        <form action="8-4.asp" method="post" enctype="multipart/form-data">
            选择文件:<input type="file" name="upfile"><br>
            文件说明:<input type="text" name="intro"><br>
            作者姓名:<input type="text" name="author" size="5"><br>
            作者姓名:<input type="text" name="author1" size="30"><br>
            作者姓名:<input type="text" name="author2" size="30"><br>
            作者姓名:<input type="text" name="author3" size="30"><br>
            作者姓名:<input type="text" name="author4" size="30"><br>
            <input type="submit" value=" 确定 ">
        </form>
    </center>
</body>
</html>