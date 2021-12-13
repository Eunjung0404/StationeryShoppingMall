<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h1 class="logoWrap imgWrap">
	<img class="logo" src="<%=request.getContextPath()%>/images/logo.png" alt="logo">
	<span>Cha&Na</span>
</h1>
<div class="headerGnbWrap"><jsp:include page="${requestScope.menu }" /></div>
<div class="searchWrap">
	<input type="text" class="searchBar" name="keyword" placeholder="검색" value="" title="검색">
	<button class="goSearchResult">
		<img src="<%=request.getContextPath()%>/images/searchIcon.png" alt="검색하기">
	</button>
</div>