<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="kr">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}

    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }

    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }
  </style>

  <script>
   $(function(){
	  $('.dropdown').on('click', function(){
		  menu =   $('.dropdown-toggle', this).text();
		  submenu = $('.dropdown-menu li a', this).text();
		  //alert(menu + "," + submenu);

		 //subm =   submenu.split(" ");
		 subm = $('.dropdown-menu li a', this).map(function(){
			         return   $(this).text();
		 })
		 code ='<div class="list-group">';
		 code +=' <a href="#" class="list-group-item active disabled">' + menu + '</a>';
		 $.each(subm, function(i){
			 code +=' <a href="#" class="list-group-item">' + subm[i] + '</a>';
		 })
		 code += '</div>';
		 $('.sidenav').html(code);


	  })

	  //왼쪽메뉴 클릭시 - delegate
	  $('.sidenav').on('click', '.list-group-item', function(){

		  if($(this).attr('class').match('disabled')) return ;

		  proc(this);
	  })
	  //드롭다운 메뉴 클릭시 -bind
	  $('.dropdown-menu li a').on('click', function(){
		  proc(this);
	  })

	  $('.navlogo .nav li a').on('click', function(){
		  proc(this);
	  })

	   function proc(item){
		  //item의 문자 -서브메뉴 가져오기
		  subtxt =   $(item).text().trim();

		  $('.text-left h1').text(subtxt);

		  if(subtxt == "회원가입"){
			  $('.text-left #result').load("/jqpro/member/memberResigter.html");
		  }else if(subtxt == "Login"){
			  $('.text-left #result').load("/jqpro/0812/lprod_prod.html");
		  }else if(subtxt == "자유게시판"){

		  }



	  }
   })


  </script>

</head>
 <body>

<style>
 .navlogo{
   background : #f5c64d;
 }
 #imglogo{
   width : 150px;
   height : 40px;
 }

</style>

<nav class="navbar navbar-inverse navlogo">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">
        <img id="imglogo" src="../images/gsjLogo2.png">
      </a>
    </div>

    <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
         <li><a href="#"><span class="glyphicon glyphicon-user"></span>회원가입</a></li>
    </ul>

  </div>
</nav>

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       	<li class="dropdown">
		    <a class="dropdown-toggle"  id="menu1" data-toggle="dropdown">마이페이지<span class="caret"></span></a>
		    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
		      <li><a  href="#">HTML </a></li>
		      <li><a  href="#">CSS </a></li>
		      <li><a  href="#">JavaScript </a></li>
		      <li><a  href="#">정보수정 </a></li>
		    </ul>
		</li>

		<li class="dropdown">
		    <a class="dropdown-toggle"  id="menu1" data-toggle="dropdown">게시판<span class="caret"></span></a>
		    <ul class="dropdown-menu" >
		      <li><a  href="#">공지게시판 </a></li>
		      <li><a  href="#">QnA게시판 </a></li>
		      <li><a  href="#">자유게시판 </a></li>
		      <li><a  href="#">자료실 </a></li>
		    </ul>
		</li>

		<li class="dropdown">
		    <a class="dropdown-toggle"  id="menu1" data-toggle="dropdown">이벤트<span class="caret"></span></a>
		    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
		      <li><a  href="#">진행중인이벤트 </a></li>
		      <li><a  href="#">1+1 </a></li>
		      <li><a  href="#">반짝세일 </a></li>
		      <li><a  href="#">당첨자발표 </a></li>
		    </ul>
		</li>
      </ul>

    </div>
  </div>
</nav>


<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-3 sidenav">

       <div class="list-group">
		  <a href="#" class="list-group-item active disabled">게시판</a>
		  <a href="#" class="list-group-item">공지게시판</a>
		  <a href="#" class="list-group-item">QnA게시판</a>
		  <a href="#" class="list-group-item">자유게시판</a>
		  <a href="#" class="list-group-item">자료실</a>
		</div>
   </div>

    <div class="col-sm-9 text-left">
      <h1>Welcome</h1>
      <hr>
      <div id="result"></div>
    </div>

  </div>
</div>



 <footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>


 </body>
 </html>











