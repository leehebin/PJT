<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="center-block" src="https://mblogthumb-phinf.pstatic.net/20160616_252/jjogabriel_1466057928503jUuvo_PNG/%B1%CD%BF%A9%BF%EE_%B0%ED%BE%E7%C0%CC_%C3%CA%B0%ED%C8%AD%C1%FA_%B9%D9%C5%C1%C8%AD%B8%E9%C0%CC%B9%CC%C1%F6_%2813%29.png?type=w2" alt="Chania">
    </div>

    <div class="item">
      <img class="center-block" "img-responsive center-block" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbIuSj0%2FbtqwD3Ts9Z0%2F277y9vZYsIKszxWtCwjO11%2Fimg.png" alt="Chania">
    </div>

    <div class="item">
      <img class="center-block" src="https://t1.daumcdn.net/cfile/tistory/9951754A5DFD9A1F05" alt="Flower">
    </div>

    <div class="item">
      <img class="center-block" src="https://e7.pngegg.com/pngimages/291/943/png-clipart-labrador-retriever-desktop-puppy-high-definition-television-puppy-animals-carnivoran.png" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	
<head>


	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
		<link rel="stylesheet" type="text/css" href="../css/mainBack.css" >
		
<!-- 여기 위에 이미지 거는 css -->
	
	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
	<style>
        body {
            padding-top : 70px;
        }
   	</style>
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
        <h1>희망찬 나만의 쇼핑몰 </h1>
        <p>J2SE , DBMS ,JDBC , Servlet & JSP, Java Framework , HTML5 , UI Framework 학습 후 Mini-Project 진행</p>
    </div>

	<!-- 참조 : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
        <h3>나는 실패한 것이 아니다.   
단지 실패할 수 있는 
방법을 알아낸 것이다.</h3>
<h3>인생에 있어 실패를 한번도 안해본 사람은    
새로운 시도를 한번도 해 보지 않은 사람이다.   </h3>
 


	</div>
  	 </div>

</body>

</html>