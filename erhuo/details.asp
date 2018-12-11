<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base target="_self">
    <title>二货-商品详情</title>

    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/head.css">
    <link rel="stylesheet" href="./CSS/foot.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="stylesheet" href="./CSS/details.css">
</head>
<body>
    <!--#include file="conn.asp"-->
	<!-- 顶部小导航 -->
	<div class="top clearfix">
		<div class="w">
			<ul class="left">
				<li><a href="index.asp">首页</a></li>
				<li class="noborder"><a href="./service.html">关于我们</a></li>
			</ul>
			<div class="right">
				<ul>
					<li><a href="./login.html">登录</a></li>
					<li class="noborder"><a href="./regist.html">注册</a></li>
				</ul>
			</div>

		</div>
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
		    end if
		%>
	</div>
    <%
        GoodsID = cint(request("GoodsID"))

        rs.close
        strSQL = "select * from erhuo.UserInfo, erhuo.Goods, erhuo.User where User.UserPhone = UserInfo.UserPhone and User.UserPhone = Goods.UserPhone and GoodsID = " & GoodsID
        rs.open strSQL, conn, 1, 1
    %>

    <!-- 详情页主体 -->
    <div class="detials_main w">
        <div class="master clearfix">
            <div class="m_info">
                <div class="clearfix">
                    <p><%=server.htmlencode(rs("UserName"))%></p>
                    <i class="iconfont icon-down-circle"></i>
                </div>
                <ul class="info_list none">
                    <li>所在地:&nbsp;&nbsp;<%=server.htmlencode(rs("UserPlace"))%></li>
                    <li>注册时间:&nbsp;&nbsp;<%=server.htmlencode(rs("UserData"))%></li>
                    <li>手机号:&nbsp;&nbsp;<%=server.htmlencode(rs("UserPhone"))%></li>
                    <li>QQ号:&nbsp;&nbsp;<%=server.htmlencode(rs("UserQQ"))%></li>
                </ul>
            </div>

            <p class="data">发布时间:&nbsp;&nbsp;<%=server.htmlencode(rs("GoodsData"))%></p>
        </div>

        <div class="info_content clearfix">
            <div class="info_content_left">
                <div class="info_img"></div>
                <div class="info_img_list">
                    <ul class="clearfix">
                        <li class="active"><img src="<%=server.htmlencode(rs("GoodsImg1"))%>" alt=""></li>
                        <li><img src="<%=server.htmlencode(rs("GoodsImg2"))%>" alt=""></li>
                        <li><img src="<%=server.htmlencode(rs("GoodsImg3"))%>" alt=""></li>
                        <li><img src="<%=server.htmlencode(rs("GoodsImg4"))%>" alt=""></li>
                        <li><img src="<%=server.htmlencode(rs("GoodsImg5"))%>" alt=""></li>
                    </ul>
                </div>
                <script>
                    var str = document.querySelector('.info_img_list .active img').src;
                    document.querySelector('.info_img').style.backgroundImage = 'url(' + str + ')';
                </script>
            </div>

            <div class="info_content_right">
                <div class="info_title">
                    <h2><%=server.htmlencode(rs("GoodsTitle"))%></h2>
                    <table>
                        <tr>
                            <td>转&ensp;让&ensp;价:</td>
                            <td class="strong"><i class="iconfont icon-YUAN strong"></i> <%=server.htmlencode(rs("GoodsMoney1"))%></td>
                        </tr>
                        <tr>
                            <td>原&emsp;&emsp;价:</td>
                            <td><i class="iconfont icon-YUAN"></i> <%=server.htmlencode(rs("GoodsMoney2"))%></td>
                        </tr>
                        <tr>
                            <td>类&emsp;&emsp;型:</td>
                            <td id="GoodsType"><%=server.htmlencode(rs("GoodsType"))%></td>
                        </tr>
                        <tr>
                            <td>成&emsp;&emsp;色:</td>
                            <td id="GoodsSituation"><%=server.htmlencode(rs("GoodsSituation"))%></td>
                        </tr>
                        <tr>
                            <td>交&ensp;易&ensp;地:</td>
                            <td><%=server.htmlencode(rs("GoodsUserPlace"))%></td>
                        </tr>
                        <tr>
                            <td>联&ensp;系&ensp;人:</td>
                            <td><%=server.htmlencode(rs("GoodsUserName"))%></td>
                        </tr>
                        <tr>
                            <td>联系方式:</td>
                            <td class="strong"><%=server.htmlencode(rs("GoodsUserPhone"))%></td>
                        </tr>
                        <tr>
                            <td>Q&ensp;Q&ensp;号:</td>
                            <td><%=server.htmlencode(rs("GoodsUserQQ"))%></td>
                        </tr>
                        <tr>
                            <td>商品描述:</td>
                            <td>
                                <%=server.htmlencode(rs("GoodsDescribe"))%>
                            </td>
                        </tr>
                    </table>
                </div>
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

<script src="./js/detalis.js"></script>

</html>