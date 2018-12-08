<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<base target="_self">
	<title>二货网</title>
	<link rel="stylesheet" href="./CSS/base.css">
	<link rel="stylesheet" href="./CSS/head.css">
	<link rel="stylesheet" href="./CSS/foot.css">
	<link rel="stylesheet" href="./iconfont/iconfont.css">
	<link rel="stylesheet" href="./CSS/index.css">
</head>

<body>
	<!-- 顶部小导航 -->
	<div class="top clearfix">
		<div class="w">
			<ul class="left">
				<li><a href="#">首页</a></li>
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

	<!-- 发布闲置 -->
	<div class="sole">
		<div class="w">
			<div class="add_box">
				<a href="./release.asp">
					<i class="iconfont icon-plus-circle"></i>
					<div class="word">
						<h2>发布闲置</h2>
						<p>闲置换钱，快速离手</p>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- 导航栏 -->
	<div class="nav w clearfix">
		<ul>
			<li class="active">新鲜</li>
			<li>手机</li>
			<li>数码</li>
			<li>租房</li>
			<li>服装</li>
			<li>居家</li>
			<li>美妆</li>
			<li>运动</li>
			<li>电器</li>
			<li>玩具乐器</li>
		</ul>
		<div class="sousuo">
			<input class="txt" type="text">
			<input class="sub" type="submit" value="搜 索">
		</div>
	</div>
	<!-- 商品子页 -->
	<div class="goods w">
		<!-- 新鲜 -->
		<div id="xinxian" class="goods_content active clearfix">
			<div class="isgoods">
				<%
					rs.close
		
					str1 = "SELECT * FROM erhuo.Goods" 
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
						str2 = "select * from erhuo.goods limit " & rows & ", 15"    
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 手机 -->
		<div id="shouji" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'shouji'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'shouji' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 数码 -->
		<div id="shuma" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'shuma'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'shuma' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 租房 -->
		<div id="zufang" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'zufang'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'zufang' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 服装 -->
		<div id="fuzhuang" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'fuzhuang'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'fuzhuang' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 居家 -->
		<div id="jujia" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'jujia'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'jujia' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 美妆 -->
		<div id="meizhuang" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'meizhuang'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'meizhuang' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 运动 -->
		<div id="yundong" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'yundong'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'yundong' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 电器 -->
		<div id="dianqi" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'dianqi'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'dianqi' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
			</div>
		</div>
		<!-- 玩具乐器 -->
		<div id="wanju" class="goods_content none clearfix">
			<div class="isgoods">
				<%
					str1 = "SELECT * FROM erhuo.Goods where GoodsType = 'wanju'" 
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
						str2 = "select * from erhuo.goods where GoodsType = 'wanju' limit " & rows & ", 15"
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
				<p>没有该类型的商品</p>
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