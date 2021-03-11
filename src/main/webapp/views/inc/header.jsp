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
html {
  font-family: sans-serif;
  color: #4b5f65;
  background: #f5f7fa;
}

body { overflow-x:hidden}

nav { width: 100%; }

.nav_wrapper {
  position: fixed;
  margin:0px auto;
  top: 0;
  width: 1000px;
  z-index : 999;
  background: #2f3b3f;
}

.menu {
  width: 100%;
  height: auto;
  background: #2f3b3f;
}

.menu ul {
  padding: 0px;
  margin: 0px;
  list-style: none;
  position: relative;
  display: inline-block;
}

.menu > li > ul.sub_menu {
  min-width: 10em;
  padding: 4px 0;
  background-color: #f4f4f4;
  border: 1px solid #fff;
}

.menu ul li { padding: 0px; }

.menu > ul > li { display: inline-block; }

.menu ul li a {
  display: block;
  text-decoration: none;
  color: #fff;
  font-size: 14px;
}

.menu ul li a:hover {
  background: #efa666;
  color: #fff;
  transition: all .5s ease-out;
}

.menu ul li.hover > a {
  background: #efa666;
  color: #fff;
}

.menu ul li > a { padding: 15px; }

.menu ul ul {
  display: none;
  position: absolute;
  top: 100%;
  min-width: 160px;
  background: #39484d;
}

.menu ul li:hover > ul { display: block;}

.menu ul ul > li { position: relative; }

.menu ul ul > li a {
  padding: 10px 15px;
  height: auto;
  background: #39484d;
}

.menu ul ul > li a:hover {
  background: #efa666;
  color: #fff;
}

.menu ul ul ul {
  position: absolute;
  left: 100%;
  top: 0;
}
.header_wrrapper{
   padding-top : 50px;
   width: 100%;
   float: left;
}
.main_header_logo{
   
}
.main_header > li{
   float: left;
   height: 20px;
   width: 10%;
   list-style : none;
}
ol{
   width:100%;
}
</style>
</head>
<body>
<div class="nav_wrapper"> 
  <nav class="menu">
    <ul>
      <li ><a href="" title="Link">a</a>
        <ul >
          <li ><a href="../product/list?p_cate_d=전연령용" title="Link">b</a></li>

        </ul>
      </li>
      <li >
         <a href="" title="Link">c</a>
          <ul >
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">d</a></li>
      
         </ul>
      </li>
      <li >
         <a href="" title="Link">e</a>
          <ul >
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">f</a></li>
         
         </ul>
      </li>
      <li >
         <a href="" title="Link">g</a>
          <ul >
          <li ><a href="../product/list?p_cate_d=목줄" title="Link">h</a></li>
        
         </ul>
      </li>
     
   
    </ul>
  </nav>
</div>
<div class="header_wrrapper">
   <nav class="navbar navbar-light bg-light">
      <a href="/projectMenu/main/main"><img src="/img/logo.png" alt="" height="40px"/></a>
        <form class="form-inline" action="../product/listSch?p_name=${p_name }">
          <input class="form-control mr-sm-2" name="p_name" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      
<!--       <a href="/projectMenu/mypage/mypage_order">마이페이지</a>
      <a href="/projectMenu/cart/list">장바구니</a> -->
     
      
      <%=login_check %>
      <%=join_check %>
      <%=joinid %>
   </nav>
   
</div>

</body>
</html>