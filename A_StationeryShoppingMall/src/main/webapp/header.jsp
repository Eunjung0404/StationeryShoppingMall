<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="headerWrap displayFlex contentBetween alignCenter">
	<div class="leftWrap displayFlex alignCenter">
		<h1 class="logoWrap imgWrap">
			<img class="logo" src="<%=request.getContextPath()%>/images/common/logo.png" alt="logo">
			<span>Cha&Na</span>
		</h1>

		<nav id="gnb">
			<jsp:include page="${requestScope.menu }" />
		</nav>
	</div>
	
	<div class="rightWrap displayFlex contentEnd alignCenter">
		<a class="loginIcon" href="<%=request.getContextPath()%>/Home?spage=loginForm.jsp">
			<span class="material-icons">person</span>
		</a>
		<a class="basketIcon" href="<%=request.getContextPath()%>/Home?spage=basket.jsp">
			<span class="material-icons">shopping_bag</span>
		</a>
		<div class="searchWrap displayFlex alignCenter">
			<div class="grayWrap">
				<input type="text" class="searchBar" name="keyword" placeholder="Search" value="" title="검색">
			</div>
			<button class="goSearchResult">
				<span class="material-icons">search</span>
			</button>
		</div>
	</div>
</div>