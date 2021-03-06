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
                <li><a href="./GoodsList.asp">商品管理</a></li>
				<li><a href="./UserManagement.asp">用户管理</a></li>
				<li><a href="./AgentList.asp">代销管理</a></li>
			</ul>
		</div>
    </div>
    <!-- 商品子页 -->
	<div class="goods w">
		<div id="xinxian" class="goods_content active clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.goods"
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
                        set rs = server.createobject("adodb.recordset")
						str2 = "select * from erhuo.goods limit " & rows & ", 15"       
						rs.open str2, conn, 1
						Do While Not rs.eof
					%>
					<li>
						<form action="./GoodsDetails.asp">
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
				<p>暂无商品</p>
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