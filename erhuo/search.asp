<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>二货-搜索结果</title>
	<link rel="stylesheet" href="./CSS/base.css">
	<link rel="stylesheet" href="./CSS/head.css">
	<link rel="stylesheet" href="./CSS/foot.css">
	<link rel="stylesheet" href="./iconfont/iconfont.css">
	<link rel="stylesheet" href="./CSS/search.css">
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
    <!-- 导航栏 -->
	<div class="nav w clearfix">
		<div class="sousuo">
			<form action="./search.asp" target="_self" method="POST">
				<input name="searchTXT" class="txt" type="text">
				<input class="sub" type="submit" value="搜 索">
			</form>
        </div>
        <div class="add_box">
            <a href="./release.asp">
                <i class="iconfont icon-plus-circle"></i>
                <div class="word">
                    <h2>发布闲置</h2>
                    <p>闲置换钱，快速离手</p>
                </div>
            </a>
            <a href="./release.asp">
                <i class="iconfont icon-check-circle"></i>
                <div class="word">
                    <h2>我的闲置</h2>
                    <p>个人闲置商品管理</p>
                </div>
            </a>
        </div>
    </div>
    <!-- 商品子页 -->
	<div class="goods w">
		<div id="xinxian" class="goods_content active clearfix">
			<div class="isgoods">
				<%
					rs.close

                    searchTXT = request("searchTXT")
					str1 = "SELECT * FROM erhuo.goods WHERE CONCAT(GoodsTitle,GoodsDescribe) LIKE '%" & searchTXT & "%'"
					set rs1 = conn.execute(str1) 
					valus = 0
					do while not rs1.eof
					valus = valus + 1
					rs1.movenext
					loop

					num = valus / 15
					if num - int(num) > 0 then
					i = int(num) + 1
					else 
					i = int(num) + 0
					end if
	
					j = 0
					className = "goods_list active clearfix"
					do while j < i
				%>
				<ul class="<%=className%>">
					<%
						rows = j * 15
						str2 = "select * from erhuo.goods WHERE CONCAT(GoodsTitle,GoodsDescribe) LIKE '%" & searchTXT & "%' limit " & rows & ", 15"    
						rs.open str2, conn, 1
						Do While Not rs.eof
					%>
					<li>
						<form action="./details.asp">
							<img src="<%=server.htmlencode(rs("GoodsImg1"))%>" alt="">
							<h6><%=server.htmlencode(rs("GoodsTitle"))%></h6>
							<p><%=server.htmlencode(rs("GoodsUserName"))%>&nbsp;<%=server.htmlencode(rs("GoodsUserPhone"))%></p>
							<span class="money"><%=server.htmlencode(rs("GoodsMoney1"))%>元</span>
							<input type="hidden" name="GoodsID" value="<%=server.htmlencode(rs("GoodsID"))%>">
							<button></button>
						</form>
					</li>
					<%
						rs.movenext
						Loop
						rs.close
					%>
				</ul>
				<%
					j = j + 1
					className = "goods_list none clearfix"
					Loop
					Set rs1 = Nothing
				%>
				<div class="page_list">
					<ul>
						<%
							z = 1
							className2 = "active"
							do while z <= i
						%>
						<li class="<%=className2%>"><%=z%></li>
						<%
							z = z + 1
							className2 = ""
							Loop
						%>
					</ul>
				</div>
			</div>
			<div class="nogoods none">
				<p>查找结果为空</p>
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
<script src="./js/index.js"></script>
</html>