<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav id="gnb">
	<ul class="depth01">
		<li>
			<a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="100">다이어리</a>
			<ul class="depth02">
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="100">전체보기</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="101">심플</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="102">기능성 포토</a></li>
			</ul>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="200">스티커/스탬프</a>
			<ul class="depth02">
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="200">전체보기</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="201">스티커</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="202">스탬프</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="203">스탬프 잉크</a></li>
			</ul>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="300">BOOK</a>
			<ul class="depth02">
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="300">전체보기</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="301">기타 필사책</a></li>
				<li><a href="<%=request.getContextPath()%>/Home?spage=cateList.jsp" data-param="302">캘리책</a></li>
			</ul>
		</li>
	</ul>
</nav>