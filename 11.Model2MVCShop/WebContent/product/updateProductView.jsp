<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	
	<link rel="stylesheet" type="text/css" href="../css/mainBack.css" >
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
<title>��ǰ���Ȯ��</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<!-- CDN(Content Delivery Network) ȣ��Ʈ ��� -->
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
<!---->

	$(function() {
		
		$("button[name='Ȯ��']").on("click", function() {	
			
			$("form").attr("action", "/product/listProduct").submit();
				
		});
		
	
	});
	
	
	$(function() {
		
		$("button[name='�߰����']").on("click", function() {	
			
			$("form").attr("action", "/product/addProduct").submit();
			
		});
	

	});	


</script>
</head>

<body bgcolor="#FAFAFA" text="#000000">

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">��ǰ���Ȯ��</h3>
	    </div>
		
		<form>
			
			<div class="row">
		  		<div class="col-xs-4 col-md-2"><strong>��ǰ��</strong></div>
				<div class="col-xs-8 col-md-4">${product.prodName}</div>
			</div>
			
			<hr/>
			
			<div class="row">
		  		<div class="col-xs-4 col-md-2 "><strong>��ǰ������</strong></div>
				<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
			</div>
			
			<hr/>
			
			<div class="row">
		  		<div class="col-xs-4 col-md-2 "><strong>��������</strong></div>
				<div class="col-xs-8 col-md-4">${product.manuDate}</div>
			</div>
			
			<hr/>
			
			<div class="row">
		  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
				<div class="col-xs-8 col-md-4">${product.price}</div>
			</div>
			
			<hr/>
			
			<div class="row">
		  		<div class="col-xs-4 col-md-2 "><strong>��ǰ�̹���</strong></div>
				<div class="col-xs-8 col-md-4">${product.fileName}</div>
			</div>
			
			<br/>
			
			<div class="form-group">
			   <div class="col-sm-offset-4  col-sm-4 text-center">
			     <button type="button" class="btn btn-primary"  name="Ȯ��">Ȯ&nbsp;&nbsp;&nbsp;��</button>
			     <button type="button" class="btn btn-primary"  name="�߰����">�߰����</button>
			   </div>
			</div>
		</form>  
 	</div>
 	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->

</body>
</html>
