<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base target="_self">
    <title>个人资料</title>

    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/head.css">
    <link rel="stylesheet" href="./CSS/foot.css">
    <link rel="stylesheet" href="./CSS/userData.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">

</head>
<body>
    <!-- 顶部小导航 -->
    <div class="top clearfix">
        <div class="w">
            <ul class="left">
                <li><a href="./index.asp">首页</a></li>
                <li><a href="./release.asp">发布闲置</a></li>
                <li class="noborder"><a href="./service.asp">关于我们</a></li>
            </ul>
            <div class="right">
                <ul>
                    <li><a href="./login.html">登录</a></li>
                    <li class="noborder"><a href="./regist.html">注册</a></li>
                </ul>
            </div>
    
        </div>
    </div>
    <!--#include file="checklogin.asp"-->

    <!-- 表单 -->
    <div class="uda_main w">
        <div class="uda_title clearfix">
            <a href="#">用户个人信息填写</a>
            <a href="./myGoods.asp">我的闲置</a>
        </div>
        <form action="./saveUserData.asp" target="_self" method="GET">
            <table>
                <tr>
                    <td>上传头像:</td>
                    <td>
                        <div class="head_photo">
                            <input id="add_img" type="file" accept="image/*">
                            <span><img id='head_photo' src="<%=server.htmlencode(rs("Userphoto"))%>"></span>
                            <input type="hidden" id="hiddenInput" name="userPhoto" value="<%=server.htmlencode(rs("Userphoto"))%>">
                        </div>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="userName">昵&emsp;&emsp;称:</label></td>
                    <td><input type="text" id="userName" class="public" name="userName" value="<%=server.htmlencode(rs("userName"))%>"></td>
                    <td>此为必填项</td>
                </tr>
                <tr>
                    <td><label for="phoneNum">手&ensp;机&ensp;号:</label></td>
                    <td><input type="text" id="phoneNum" class="public" readonly name="phoneNum" value="<%=server.htmlencode(rs("UserPhone"))%>"></td>
                    <td>手机号默认为登录名，不可改动</td>
                </tr>
                <tr>
                    <td>性&emsp;&emsp;别:</td>
                    <td class="sex">
                        <label for="man">男:</label>
                        <input type="radio" id="man" name="sex" checked value="man">
                        <label for="woman">女:</label>
                        <input type="radio" id="woman" name="sex" value="woman">
                        <label for="secrecy">保密:</label>
                        <input type="radio" id="secrecy" name="sex" value="secrecy">
                    </td>
                    <td></td>
                </tr>

                <input type="hidden" id="DBSex" value="<%=server.htmlencode(rs("UserSex"))%>" >
                <script>
                    var DBSex = document.getElementById('DBSex').value;
                    var inputs = document.querySelectorAll('.sex input');
                    
                    for (var i = 0; i < inputs.length; i++) {
                        if (inputs[i].value == DBSex) {
                            inputs[i].checked = true;
                        } else {
                            inputs[i].checked = false;
                        }
                    }
                </script>

                <tr>
                    <td><label for="describe">我的签名:</label></td>
                    <td><textarea name="describe" id="describe" cols="60" rows="10"><%=server.htmlencode(rs("UserSignature"))%></textarea></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="QQ">Q&ensp;Q&ensp;号:</label></td>
                    <td><input type="text" id="QQ" class="public" name="QQ" value="<%=server.htmlencode(rs("UserQQ"))%>"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="place">所在地址:</label></td>
                    <td><input type="text" id="place" class="public" name="place" value="<%=server.htmlencode(rs("UserPlace"))%>"></td>
                    <td>此为必填项</td>
                </tr>
            </table>
            <button class="btn">保&emsp;&emsp;存</button>
        </form>
    </div>

    <!-- 底部 -->
    <div class="footer_bgc">
        <div class="footer w clearfix">
            <div class="f_top">
                <ul>
                    <li>卖家实名认证</li>
                    <li>专业团队支撑</li>
                    <li>学生放心交易</li>
                </ul>
                <div class="img">
                    <p class="one">诚信网站<br>示范企业</p>
                    <p class="two">可信网站<br>信用评价</p>
                    <p class="three">网上交易<br>保障中心</p>
                </div>
            </div>
        </div>
        <div class="f2_bd">
            <div class="f_2 w">
                <div class="f2_bottom">
                    二货网，河北工程大学生专属的二手货交易网！
                </div>
            </div>
        </div>
    </div>

    <%
        rs.close
        set rs=nothing
    %>
</body>

<script src="./js/userData.js"></script>

</html>