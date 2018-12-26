<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base target="_self">
    <title>我的代销</title>

    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/head.css">
    <link rel="stylesheet" href="./CSS/foot.css">
    <link rel="stylesheet" href="./CSS/myGoods.css">
</head>

<body>
    <!-- 顶部小导航 -->
    <div class="top clearfix">
        <div class="w">
            <ul class="left">
                <li><a href="./index.asp">首页</a></li>
                <li><a href="./release.asp">发布闲置</a></li>
                <li class="noborder"><a href="./service.html">关于我们</a></li>
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
    <div class="mg_main w">
        <div class="mg_title clearfix">
            <a href="#">我的代销</a>
            <a href="./myGoods.asp">我的闲置</a>
            <a href="./userData.asp">用户个人信息填写</a>
        </div>
        
        <div class="goods_list">
            <ul>
                <%
                    rs.close

                    str1 = "SELECT * FROM erhuo.Agent WHERE UserPhone = '" & phone & "' ORDER BY AgentID DESC"    
                    rs.open str1, conn, 1
                    Do While Not rs.eof
                %>
                <li class="mygoods clearfix">
                    <form action="./managementMyAgent.asp" method="POST" target="_self">
                        <img src="<%=server.htmlencode(rs("AgentImg1"))%>" alt="">
                        <div class="myGood_info">
                            <h2><%=server.htmlencode(rs("AgentTitle"))%></h2>
                            <p><strong><%=server.htmlencode(rs("AgentMoney1"))%></strong>元</p>
                            <p><%=server.htmlencode(rs("AgentData"))%></p>
                        </div>
                        <div class="myGood_info">
                            <p><%=server.htmlencode(rs("AgentUserPhone"))%></p>
                            <p><%=server.htmlencode(rs("AgentUserPlace"))%></p>
                        </div>
                        <div class="btns">
                            <button>删 除 代 销</button>
                            <input type="hidden" id="AgentID" name="AgentID" value="<%=server.htmlencode(rs("AgentID"))%>">
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
                <p>对不起,您还没有发布代销，<a href="./agent.asp">前去发布</a></p>
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