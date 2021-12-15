<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h1 class="logoWrap imgWrap">
	<img class="logo" src="<%=request.getContextPath()%>/images/common/logo.png" alt="logo">
	<span>Cha&Na</span>
</h1>
<div class="headerGnbWrap"><jsp:include page="${requestScope.menu }" /></div>
<div class="searchWrap">
	<input type="text" class="searchBar" name="keyword" placeholder="Search" value="" title="검색">
	<button class="goSearchResult">
		<span class="material-icons">search</span>
	</button>
</div>
<div class="loginWrap">
	<a href="<%=request.getContextPath()%>/Home?spage=loginForm.jsp">
		<span class="material-icons">person</span>
	</a>
</div>
<div class="basketWrap">
	<a href="<%=request.getContextPath()%>/Home?spage=basket.jsp">
		<span class="material-icons">shopping_bag</span>
	</a>
</div>