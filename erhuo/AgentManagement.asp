<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base target="_blank">
    <title>二货-审核闲置</title>

    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/head.css">
    <link rel="stylesheet" href="./CSS/foot.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="stylesheet" href="./CSS/release.css">
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
    <!-- 表单 -->
    <!--#include file="conn.asp"-->
    <%
        AgentID = cint(request("AgentID"))
		str = "select * from erhuo.Agent where AgentID = " & AgentID      
		set rs = conn.execute(str) 
    %>
    <div class="release_main w">
        <div class="release_title">信息审核</div>
        <table>
            <tr>
                <td><label for="describe">上传照片:</label></td>
                <td>
                    <div class="good_imgs">
                        <span><img id='good_imgs_1' src="<%=server.htmlencode(rs("AgentImg1"))%>"></span>
                    </div>
    
                    <div class="good_imgs">
                        <span><img id='good_imgs_2' src="<%=server.htmlencode(rs("AgentImg2"))%>"></span>
                    </div>
    
                    <div class="good_imgs">
                        <span><img id='good_imgs_3' src="<%=server.htmlencode(rs("AgentImg3"))%>"></span>
                    </div>
    
                    <div class="good_imgs">
                        <span><img id='good_imgs_4' src="<%=server.htmlencode(rs("AgentImg4"))%>"></span>
                    </div>
    
                    <div class="good_imgs">
                        <span><img id='good_imgs_5' src="<%=server.htmlencode(rs("AgentImg5"))%>"></span>
                    </div>
                </td>
            </tr>
        </table>
        
        <form action="./RelaseAgent.asp" method="POST" target="_self">
            <input type="hidden" id="AgentID" name="AgentID" value="<%=server.htmlencode(rs("AgentID"))%>">
            <input type="hidden" id="goodsPhoto1" name="goodsPhoto1" value="<%=server.htmlencode(rs("AgentImg1"))%>">
            <input type="hidden" id="goodsPhoto2" name="goodsPhoto2" value="<%=server.htmlencode(rs("AgentImg2"))%>">
            <input type="hidden" id="goodsPhoto3" name="goodsPhoto3" value="<%=server.htmlencode(rs("AgentImg3"))%>">
            <input type="hidden" id="goodsPhoto4" name="goodsPhoto4" value="<%=server.htmlencode(rs("AgentImg4"))%>">
            <input type="hidden" id="goodsPhoto5" name="goodsPhoto5" value="<%=server.htmlencode(rs("AgentImg5"))%>">
            <table>
                <tr>
                    <td><label for="title">标&emsp;&emsp;题:</label></td>
                    <td><input type="text" name="title" id="title" class="public legion" placeholder="<%=server.htmlencode(rs("AgentTitle"))%>"></td>
                    <td>此为必填项</td>
                </tr>
                <tr>
                    <td><label for="money1">转&ensp;让&ensp;价:</label></td>
                    <td><input type="text" name="money1" id="money1" class="public legion" placeholder="<%=server.htmlencode(rs("AgentMoney1"))%>"></td>
                    <td>此为必填项</td>
                </tr>
                <tr>
                    <td><label for="money2">原&emsp;&emsp;价:</label></td>
                    <td><input type="text" name="money2" id="money2" class="public legion" placeholder="<%=server.htmlencode(rs("AgentMoney2"))%>"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="describe">描&emsp;&emsp;述:</label></td>
                    <td><textarea name="describe" id="describe" class="legion" cols="60" rows="10"><%=server.htmlencode(rs("AgentDescribe"))%></textarea></td>
                    <td>此为必填项，例如：商品品牌，使用时间。。。</td>
                </tr>
                <tr>
                    <td>商品类型:</td>
                    <td>
                        <select name="goodstype" id="goodstype" class="goods_type goods_public">
                            <option value="shouji" selected>手机</option>
                            <option value="shuma">数码</option>
                            <option value="zufang">租房</option>
                            <option value="fuzhuang">服装</option>
                            <option value="jujia">居家</option>
                            <option value="meizhuang">美妆</option>
                            <option value="yundong">运动</option>
                            <option value="dianqi">电器</option>
                            <option value="wanju">玩具乐器</option>
                        </select>
                        <select name="situation" id="situation" class="goods_use_info goods_public">
                            <option value="new" selected>全新</option>
                            <option value="half">半成新</option>
                            <option value="old">旧货</option>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="name">联&ensp;系&ensp;人:</label></td>
                    <td><input type="text" name="userName" id="name" class="public legion" placeholder="请输入联系人姓名"></td>
                    <td>此为必填项</td>
                </tr>
                <tr>
                    <td><label for="phone_num">手&ensp;机&ensp;号:</label></td>
                    <td><input type="text" name="phoneNum" id="phone_num" class="public legion" placeholder="请输入手机号"></td>
                    <td>此为必填项</td> 
                </tr>
                <tr>
                    <td><label for="QQ">Q&ensp;Q&ensp;号:</label></td>
                    <td><input type="text" name="QQ" id="QQ" class="public" placeholder="请输入QQ号"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="place">交易地址:</label></td>
                    <td><input type="text" name="place" id="place" class="public legion" placeholder="请输入交易地址"></td>
                    <td>此为必填项</td>
                </tr>
            </table>
            <button class="btn">审核通过</button>
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

</body>

<script src="./js/release.js"></script>

</html>