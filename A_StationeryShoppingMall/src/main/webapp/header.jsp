<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="headerWrap displayFlex contentBetween alignCenter">
	<div class="leftWrap displayFlex alignCenter">
		<button class="mobileShow material-icons" onclick="_showGnb()">menu</button>

		<h1 class="logoWrap imgWrap">
			<a href="<%=request.getContextPath()%>/Home?spage=home.jsp">
				<img class="logo" src="<%=request.getContextPath()%>/images/common/logo.png" alt="logo">
				<span>Cha&Na</span>
			</a>
		</h1>

		<nav id="gnb">
			<include data-href="../include/gnb.html"></include>
			<div class="mobileShow blackBlock" onclick="_hideGnb()">
				<button class="close">닫기</button>
			</div>
		</nav>
	</div>
	
	<div class="rightWrap displayFlex contentEnd alignCenter">
		<a class="loginIcon material-icons" href="<%=request.getContextPath()%>/Home?spage=loginForm.jsp">person</a>
		<a class="basketIcon material-icons" href="<%=request.getContextPath()%>/Home?spage=basket.jsp">shopping_bag</a>
		<div class="searchWrap displayFlex alignCenter">
			<div class="grayWrap">
				<input type="text" class="searchBar" name="keyword" placeholder="Search" value="" title="검색">
			</div>
			<button class="goSearchResult material-icons" tabindex="0">search</button>
		</div>
	</div>
</section>