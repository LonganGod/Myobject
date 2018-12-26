<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base target="_self">
    <title>我的闲置</title>

    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/head.css">
    <link rel="stylesheet" href="./CSS/foot.css">
    <link rel="stylesheet" href="./CSS/UserManagement.css">
</head>

<body>
    <!-- 顶部小导航 -->
    <div class="top clearfix">
        <div class="w">
            <ul class="left">
                <li><a href="index.asp">首页</a></li>
                <li><a href="./GoodsList.asp">商品管理</a></li>
                <li><a href="./UserManagement.asp">用户管理</a></li>
                <li><a href="./AgentList.asp">代销管理</a></li>
            </ul>
        </div>
    </div>
    <!--#include file="conn.asp"-->
    
    <!-- 表单 -->
    <div class="mg_main w">        
        <div class="goods_list">
            <ul>
                <%
                    set rs = server.createobject("adodb.recordset")
                    str1 = "SELECT * FROM erhuo.userinfo"    
                    rs.open str1, conn, 1
                    Do While Not rs.eof
                %>
                <li class="mygoods clearfix">
                    <form action="./delUser.asp" method="POST" target="_self">
                        <table>
                            <tr>
                                <td rowspan="2" class="photo"><img src="<%=server.htmlencode(rs("Userphoto"))%>" alt=""></td>
                                <td>用&ensp;户&ensp;名：<%=server.htmlencode(rs("userName"))%></td>
                                <td>性&emsp;&emsp;别：<%=server.htmlencode(rs("UserSex"))%></td>
                                <td>Q&ensp;Q&ensp;号：<%=server.htmlencode(rs("UserQQ"))%></td>
                            </tr>
                            <tr>
                                <td>手&ensp;机&ensp;号：<%=server.htmlencode(rs("UserPhone"))%></td>
                                <td>所&ensp;在&ensp;地：<%=server.htmlencode(rs("UserPlace"))%></td>
                                <td>建号日期：<%=server.htmlencode(rs("UserData"))%></td>
                            </tr>
                            <tr>
                                <td class="user_Signature" colspan="4">个人签名：<%=server.htmlencode(rs("UserSignature"))%></td>
                            </tr>
                        </table>
                        <div class="btns">
                            <input type="hidden" name="userphone" value="<%=server.htmlencode(rs("UserPhone"))%>">
                            <button>删 除 用 户</button>
                        </div>
                    </form>
                </li>
                <%
		            rs.movenext
		            Loop
		            rs.Close 
		            Set rs = Nothing 
		        %>
            </ul>

            <div class="no_goods">
                <p>目前无会员注册</p>
            </div>
        </div>
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
</body>

<script src="./js/myGoods.js"></script>

</html>