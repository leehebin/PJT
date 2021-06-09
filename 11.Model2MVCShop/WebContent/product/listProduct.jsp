<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
	<head>
  <link rel="stylesheet" href="/css/owl.carousel.css">
  <script src="/js/jquery.1.12.4.min.js" charset="utf-8"></script>
</head>

<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
   
   <link rel="stylesheet" type="text/css" href="../css/mainBack.css" >
   
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/product/listProduct?menu=${param.menu}").submit();
		}
		
		
		//============= "검색"  Event  처리 =============	
		 $(function() {
			 $( "button:contains('검색')" ).on("click" , function() {
					fncGetList(1);	
				});
		 });
		 
		
		//============= prodNo 에 상품정보보기  Event  처리(Click) =============	
		 $(function() {
		
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td:nth-child(2)" ).on("click" , function() {
				self.location ="/product/getProduct?prodNo="
					+$(this).attr("value")+"&menu="+$(this).attr("value2");
			});
						
			//==> userId LINK Event End User 에게 보일수 있도록  ????????????????????????
			$( "td:nth-child(2)" ).css("color" , "red");
			
		});	
		
		
		//============= userId 에 회원정보보기  Event  처리 (double Click)=============
		 $(function() {
			 
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(  "td:nth-child(5) > i" ).on("click" , function() {
			
				var prodNo = $(this).next().val();
		
					}); 
						////////////////////////////////////////////////////////////////////////////////////////////
					
			});
			
			//==> userId LINK Event End User 에게 보일수 있도록 
		//	$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
			//$("h7").css("color" , "red");
			
			//==> 아래와 같이 정의한 이유는 ??
		//	$(".ct_list_pop:nth-child(2n+1)" ).css("background-color" , "whitesmoke");
		});	
	
	</script>
	
</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-info">
	       <h3>상품목록조회</h3>
	    </div>
	    
	    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
			    <form class="form-inline" name="detailForm">
			    
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
						<option value="0"
								${ ! empty search.searchCondition &&
								 search.searchCondition==0 ? "selected" : "" }>상품번호</option>
							<option value="1"
								${ ! empty search.searchCondition &&
								 search.searchCondition==1 ? "selected" : "" }>상품명</option>
							<option value="2"
								${ ! empty search.searchCondition &&
								 search.searchCondition==2 ? "selected" : "" }>상품가격</option>
					</select>
				  </div>
				  
				  <div class="form-group">
				    <label class="sr-only" for="searchKeyword">검색어</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="검색어"
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-default">검색</button>
				  
				  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	    	
		</div>
		<!-- table 위쪽 검색 Start /////////////////////////////////////-->
		
		
      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped" >
      
        <thead>
          	<tr>
				<th class="ct_list_b" align="center" >No</th>
				<th class="ct_list_b" align="left" >상품명</th>
				<th class="ct_list_b" align="left" >가격</th>
				<th class="ct_list_b" align="left" >등록일</th>
				<th class="ct_list_b" align="left" ></th>
				<th class="ct_list_b" align="left" >현재상태</th>
			</tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
				<c:forEach var="product" items="${list}">
					<c:set var="i" value="${ i+1 }" />
					<tr class="ct_list_pop">
						<td align="center">${ i }</td>
						<td align="left" value="${product.prodNo}" value2="${param.menu}">
						${product.prodName}
						</td>
						<td align="left">${product.price}</td>
						<td align="left">${product.regDate}</td>
						<td align="left">
			  				<i class="glyphicon glyphicon-ok" id= "${product.prodNo}"></i>
			  				<input type="hidden" value="${product.prodNo}">
			  			</td>
						<td align="left">${product.proTranCode}</td>
					</tr>
					<%-- <tr>
						<td id="${product.prodNo}" colspan="11" bgcolor="D6D7D6" height="1"></td>
					</tr> --%>
				</c:forEach>
        
        </tbody>
      
      </table>
	  <!--  table End /////////////////////////////////////-->
	  
 	</div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
	<a style="display: scroll; position: fixed; bottom: 20px; right: 30px;"
		href="#" title=Top> <img
		src="http://cfile22.uf.tistory.com/image/116F87594D88BF7422A8A3"
		alt=""
		onmouseover="this.src='http://cfile23.uf.tistory.com/image/206F87594D88BF74210850'"
		onmouseout="this.src='http://cfile22.uf.tistory.com/image/116F87594D88BF7422A8A3'"
		border="0" /></a>

	
</body>

</html>
