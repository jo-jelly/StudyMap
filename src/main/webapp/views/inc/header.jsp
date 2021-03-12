<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">    
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%
	//아이디 세션 연결
   String joinid = (String)session.getAttribute("id");

   String login_check = "";

   String join_check = "";
   
   String grade = (String)session.getAttribute("grade");




   if(joinid == null){

	  	 login_check ="<a href='/projectMenu/login/loginMainForm'>로그인</a>";
	     join_check = "<a href='/projectMenu/join/joinMainForm'>회원가입</a>";
	     joinid = "비회원입니다";
   } else { 

      login_check = "<a href='/projectMenu/login/logout'>로그아웃</a>";

      join_check = "<a href='/projectMenu/mypage/mypage_order'>마이페이지</a>";
      
      joinid = (String)session.getAttribute("id") + "님 반가워요!";

   }
   if(grade!=null){
	   if(grade.equals("관리자")){
		  	  login_check = "<a href='/projectMenu/login/logout'>로그아웃</a>";
		  	
		      join_check = "<a href='/admin/storage/list'>관리페이지</a>";
		      
		      joinid = (String)session.getAttribute("id") + "님 반가워요!";
	   }
   }
%>
<title>Show/Hide Toggle Menu Demo</title>
<style>
<style>
	html, body
	{
		height: 100%;

	}
	
	body
	{
		margin: 0px;
		padding: 0px;
/* 		background: #191919; */
		font-family: 'Source Sans Pro', sans-serif;
		font-size: 12pt;
		font-weight: 400;
		color: #4E4D4D;
	}
	
	
	h1, h2, h3
	{
		margin: 0;
		padding: 0;
	}
	
	p, ol, ul
	{
		margin-top: 0;
	}
	
	ol, ul
	{
		padding: 0;
		list-style: none;
	}
	
	p
	{
		line-height: 180%;
	}
	
	strong
	{
	}
	
	a
	{
		color: #383838;
	}
	
	a:hover
	{
		text-decoration: none;
	}
	
	.container
	{
		width: 1200px;
		margin: 0px auto;
	}


/*********************************************************************************/
/* login                                                                          */
/*********************************************************************************/

	#login
	{
	/* 	position: fixed;
		top: 2em; */
		right: 0;
		
	}
	
	#login ul
	{
		display: inline-block;
		text-align: right;
	}
	
	#login li
	{
		display: block;
		float: left;
		text-align: center;
	}
	
	#login li a, #login li span
	{
		padding: 1em 1.5em;
		text-decoration: none;
		font-weight: 400;
		color: rgba(0,0,0,.8);
	}
	
	#login li:hover a, #login li.active a, #login li.active span
	{
	}
	
	#login a:hover
	{
		text-decoration: underline;
	}
	
	#login .current_page_item a
	{
	}
	
	#login .icon
	{
	}


/*********************************************************************************/
/* Image Style                                                                   */
/*********************************************************************************/

	.image
	{
		display: inline-block;
	}
	
	.image img
	{
		display: block;
		width: 100%;
	}
	
	.image-full
	{
		display: block;
		width: 100%;
		margin: 0 0 0 0;
	}
	
	.image-left
	{
		float: left;
		margin: 0 2em 2em 0;
	}
	
	.image-centered
	{
		display: block;
		margin: 0 0 2em 0;
	}
	
	.image-centered img
	{
		margin: 0 auto;
		width: auto;
	}

/*********************************************************************************/
/* List Styles                                                                   */
/*********************************************************************************/

	ul.style1
	{
	}


/*********************************************************************************/
/* Social Icon Styles                                                            */
/*********************************************************************************/

	ul.contact
	{
		overflow:  hidden;
		margin: 0em 0 3em 0;
		padding-top: 1em;
		text-align: center;
	}
	
	ul.contact li
	{
		display: inline-block;
		padding: 0em 0.30em;
		font-size: 1em;
	}
	
	ul.contact li span
	{
		display: none;
		margin: 0;
		padding: 0;
	}
	
	ul.contact li a
	{
		color: #FFF;
	}
	
	ul.contact li a:before
	{
		display: inline-block;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 2em;
		color: rgba(255,255,255,.3);
	}

/*********************************************************************************/
/* Title Styles                                                                  */
/*********************************************************************************/

	.title
	{
		text-align: center;
	}
	
	.title h2
	{
		letter-spacing: 0.10em;
		text-transform: uppercase;
		font-weight: 700;
		color: #3f3f3f;
	}

	.title .byline
	{
		display: block;
		padding-top: 1em;
		font-weight: 300;
		font-size: 1.1em;
	}


/*********************************************************************************/
/* Button Style                                                                  */
/*********************************************************************************/

	.button
	{
		display: inline-block;
		margin: 1em 0em;
		padding: 1em 3em 1em 3em;
		background: #2A70E8;
		border-radius: 8px;
		letter-spacing: 0.20em;
		text-decoration: none;
		text-align: center;
		text-transform: uppercase;
		font-weight: 400;
		font-size: 0.90em;
		color: #FFF;
	}
	
	.button:before
	{
	}
		
/*********************************************************************************/
/* Header                                                                        */
/*********************************************************************************/

	#header
	{
		background: #2A70E8;
	}

/*********************************************************************************/
/* Logo                                                                          */
/*********************************************************************************/

	#logo
	{
		padding: 4em 0em;
		background: #FFF;
		text-transform: uppercase;
	}

	#logo h1
	{
		text-align: center;
		font-weight: 900;
		font-size: 2.5em;
	}
	
	#logo h1 a
	{
	}

	#logo span
	{
		padding: 0em 0em 0em 0.5em;
	}
	
	#logo h1:before
	{
		
	}
	
	#logo a 
	{
		color: #2A70E8;
	}


/*********************************************************************************/
/* Menu                                                                          */
/*********************************************************************************/

	#menu ul
	{
		margin: 0;
		padding: 20px 0px 20px 0px;
		list-style: none;
		line-height: normal;
		text-align: center;
	}
	
	#menu li
	{
		display: inline-block;
	}
	
	#menu a
	{
		display: block;
		padding: 1em 2em;
		letter-spacing: 1px;
		text-decoration: none;
		text-transform: uppercase;
		font-size: 1em;
		font-weight: 700;
		color: #FFF;
	}
	
	#menu .current_page_item a
	{
		border-radius: 30px;
		border: 1px solid;
		border-color: rgba(255,255,255,.2);
	}
	
	#menu a:hover
	{
	}

</style>

</head>
<body>
<div id="logo">
<h1>
<a href="../main/main" class="icon icon-group">studyMap</a>
</h1>
</div>

<div id="login">
<ul>
	<li><a href="../main/main" accesskey="1" title="">로그인</a></li>
	<li><a href="../main/main" accesskey="2" title="">회원가입</a></li>
</ul>
</div>

<div id="header">
<div id="menu" class="container">
<ul>
<li class="current_paage_item">
<a href="../main/main" accesskey="1" title="">스터디그룹</a></li>
<li class="current_paage_item">
<a href="../main/main" accesskey="1" title="">프로젝트</a></li>
<li class="current_paage_item">
<a href="../main/main" accesskey="1" title="">포럼</a></li>
</ul>
</div>
</div>

</body>
</html>