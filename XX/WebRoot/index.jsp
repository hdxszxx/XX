<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link type="text/css" href="<%=basePath%>/static/CanvasParticles/css/canvas-particle.css" rel="stylesheet"/>
	<script type="text/javascript" src="<%=basePath%>/static/CanvasParticles/js/canvas-particle.js"></script>
	<script type="text/javascript" src="<%=basePath%>/static/common/jquery-3.2.1.js"></script>
<style type="text/css">
	.optionDiv{
		position: absolute;top:0px;right: 0px;color: white;
	}
</style>
</head>
<body class="body">
	<div id="mydiv" class="background" ondblclick="juep();"></div>
	
	<div class="optionDiv">
		<ul style="display: flex;list-style-type: none;">
			<li style="margin-right: 100px;"><a href="#" style="text-decoration: none;color: white;">计算</a></li>
			<li style="margin-right: 100px;">2</li>
			<li style="margin-right: 100px;">3</li>
			<li style="margin-right: 100px;">4</li>
			<li style="margin-right: 100px;">5</li>
			<li style="margin-right: 100px;">6</li>
		</ul>
	</div>
	
	<div style="position: absolute;left: 0px;bottom: 0px;">
		<input type="button" value="关闭特效" onclick="noCanvasParticles(this);"/>
	</div>
	
	<!-- 背景div -->
	<script type="text/javascript">
		window.onload = function() {
		    //配置
		    var config = {
		        vx: 4,	//小球x轴速度,正为右，负为左
		        vy: 4,	//小球y轴速度
		        height: 2,	//小球高宽，其实为正方形，所以不宜太大
		        width: 2,
		        count: 250,		//点个数
		        color: "121, 162, 185", 	//点颜色
		        stroke: "130,255,255", 		//线条颜色
		        dist: 6000, 	//点吸附距离
		        e_dist: 20000, 	//鼠标吸附加速距离
		        max_conn: 10 	//点到点最大连接数
		    }
		    //调用
		    CanvasParticle(config);
		}
		
		function noCanvasParticles(obj){
			var value = $(obj).val();
			if(value == '关闭特效'){
				$('#mydiv').hide();
				$(obj).val('开启特效');
			}else{
				$('#mydiv').show();
				$(obj).val('关闭特效');
			}
		}
		
		function juep(){
			window.location.href="pages/mimi/mimi.html";
		}
	</script>
</body>
</html>
