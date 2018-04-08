<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人信息</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="stylesheet" type="text/css" href="common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="common/bootstrap/css/bootstrap.css" media="all">
	<link rel="stylesheet" type="text/css" href="common/global.css" media="all">
	<link rel="stylesheet" type="text/css" href="css/personal.css" media="all">
	
	<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function update() {
		document.forms[0].action = "update";
		document.forms[0].submit();
	}
</script>
	
	
</head>
<body>
<section class="layui-larry-box">
	<div class="larry-personal">
		<header class="larry-personal-tit">
			<span>修改品牌信息</span>
		</header><!-- /header -->
		<div class="larry-personal-body clearfix changepwd">
			<form class="layui-form col-lg-4" method="post" action="">
			<div class="layui-form-item">
					<div class="layui-input-block">  
					  	<input type="hidden" name="pbid"  value="${pbrand.pbid }" class="layui-input layui-disabled"   >
					</div>
				</div>
			
			 	<div class="layui-form-item">
					<label class="layui-form-label">品牌名称</label>
					<div class="layui-input-block">  
					  	<input type="text" name="pbname"  value="${pbrand.pbname }"   class="layui-input"   >
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">生产地址</label>
					<div class="layui-input-block">  
					  	<input type="text" name="pbadd" value="${pbrand.pbadd }"    class="layui-input"  >
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">联系电话</label>
					<div class="layui-input-block">  
					  	<input type="text" name="pbphone" value="${pbrand.pbphone }"   class="layui-input" >
					</div>
				</div>
				
<!-- 				<div class="layui-form-item">
					<label class="layui-form-label">图片</label>
					<div class="layui-input-block">
						<input type="file" name="pimg" class="layui-upload-file">
					</div>
				</div> -->
				
				
				<div class="layui-form-item">
					<label class="layui-form-label">商品类型</label>
					<div class="layui-input-block">
						<select  id="ptid" name="ptid" class="form-control">
									<option value="-1">--请选择--</option>
									<c:forEach items="${list }" var="t">
										<c:if test="${t.producttypeid>0 }">
											<option value="${t.ptid }">${t.ptname }</option>
										</c:if>
									</c:forEach>
						</select>
					</div>
				</div>
				
				
				<div class="layui-form-item change-submit">
					<div class="layui-input-block">
						<button class="layui-btn" onclick="update()">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="common/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['form','upload'],function(){
         var form = layui.form();
	});
	
	$(function(){
		$("#pbid").val("${product.pbrand.pbid}");
		$("#ptid").val("${product.productType.ptid}");
	}
			)
</script>
</body>
</html>