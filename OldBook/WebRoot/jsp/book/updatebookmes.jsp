<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	Object name = session.getAttribute("username");
 %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>旧书館 ---用旧书交換時光  </title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- css -->
    <link href="<%=request.getContextPath()%>/plugins/css/index.css" rel="stylesheet">
  </head>
  <body>
  	<div class="head">
  		<div class="container" style="width:100%;">
  		<div class="col-sm-4 "><a id="index" href="/OldBook/index"><span class="glyphicon glyphicon-book yellow"></span>旧书館</a> --- 用旧书交換時光</div>
  		<div class="col-sm-8 ">
  			<div class="pull-right hidden-sm dropdown">
  						<a type="button" class="btn dropdown-toggle" title="发布旧书" style="font-size:20px" id="addbook"><i
								class="glyphicon glyphicon-plus"></i>发布旧书
							</a>	
						欢迎您,<%=name %>
							<a type="button" class="btn dropdown-toggle" style="font-size:20px" id="dropdownMenu1" data-toggle="dropdown"><i
								class="glyphicon glyphicon-user"></i> 
								<span class="glyphicon glyphicon-chevron-down"></span>
							</a>
						<ul class="dropdown-menu pull-right" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								id="mymes">我的信息</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								id="mybooks">我的书库</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								id="myorder">我的订单</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								id="oldorder">历史订单</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								id="logout">退出</a></li>
						</ul>
					</div>
  		</div>
  		</div>
  	</div>
  	<div class="container">
  		<br>
  		<div class="row mymes">
  		修改书籍信息
  		<hr style="width:1200px;height:1px;border:none;border-top:1px solid #555555;">
  		</div>
		<br>
		<div style="margin:0 auto;height:500px; width:1025px; font-size:18px;background-image: url('<%=request.getContextPath()%>/plugins/image/jian.png');">
			<form method="post" action="updatebooksuccess">
			<br>
			<div class="form-group">
				<label for="bookname" class="col-sm-2 control-label">书名</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="up.bookname" name="up.bookname" value="<s:property value="#session.upbook.bookname" />"
						placeholder="请输入书名">
				</div>
			</div><br><br>
			<div class="form-group">
				<label for="author" class="col-sm-2 control-label">作者</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="up.author" name="up.author" value="<s:property value="#session.upbook.author" />"
						placeholder="请输入作者">
				</div>
			</div><br><br>
			<div class="form-group">
				<label for="damage" class="col-sm-2 control-label">破损度</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="up.damage" name="up.damage" value="<s:property value="#session.upbook.damage" />"
						placeholder="请输入破损度">
				</div>
			</div><br><br>
			<div class="form-group">
				<label for="price" class="col-sm-2 control-label">价格</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="up.price" name="up.price" value="<s:property value="#session.upbook.price" />"
						placeholder="请输入价格">
				</div>
			</div><br><br>
			<div class="form-group">
				<label for="content" class="col-sm-2 control-label">书籍简介</label>
				<div class="col-sm-8">
					<textarea class="form-control" rows="3" id="up.content " name="up.content"><s:property value="#session.upbook.content" /></textarea>
				</div>
			</div><br>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10"><br>
					<button type="submit" class="myButton">确认修改</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	<div class=" bottom">
	<hr style="width:1170px;height:1px;border:none;border-top:1px solid #555555;">
		©2017/6/6 SSH大作业   201577G0649 张世文  旧书館 ---用旧书交換時光
	</div>
    <!-- jQuery  -->
    <script src="<%=request.getContextPath()%>/plugins/js/jquery-3.1.1.js"></script>
    <!-- Bootstrap -->
    <script src="<%=request.getContextPath()%>/plugins/bootstrap/js/bootstrap.min.js"></script>
  </body>
  <script type="text/javascript">
	$("#buybook").click(function() {
		window.location.href = "/OldBook/index";
	});
</script>
<script type="text/javascript">
	$("#addbook").click(function() {
		window.location.href = "/OldBook/addbook";
	});
</script>
<script type="text/javascript">
	$("#mymes").click(function() {
		window.location.href = "/OldBook/mymes";
	});
</script>
<script type="text/javascript">
	$("#mybooks").click(function() {
		window.location.href = "/OldBook/mybooks";
	});
</script>
<script type="text/javascript">
	$("#mybooks2").click(function() {
		window.location.href = "/OldBook/mybooks";
	});
</script>
<script type="text/javascript">
	$("#myorder").click(function() {
		window.location.href = "/OldBook/myorder";
	});
</script>
<script type="text/javascript">
	$("#oldorder").click(function() {
		window.location.href = "/OldBook/oldorder";
	});
</script>
<script type="text/javascript">
	$("#logout").click(function() {
		window.location.href = "/OldBook/hello";
	});
</script>
</html>
