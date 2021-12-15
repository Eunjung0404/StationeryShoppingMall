<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<!-- s: seo -->
	<title>Cha&Na</title>
	<meta name="application-name" content="Cha&Na">
	<meta name="apple-mobile-web-app-title" content="Cha&Na">
	
	<meta name="description" content="차은정&나슬기 포트폴리오 사이트">
	<meta name="keywords" content="차은정&나슬기,포트폴리오">
	<meta name="author" content="Cha Eun Jung, Na Seul Gee">
	<meta name="generator" content="VS Code, eclipse">

	<link rel="shorcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/images/common/favicon.ico">
	<!-- e: seo -->

	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!-- 구글 텍스트 아이콘 -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" defer>/*JQ*/</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/script.js" defer></script>
</head>
<body>
	<header id="header">
		<jsp:include page="${requestScope.header }" />
	</header>
	<main id="container">
		<jsp:include page="${requestScope.main }" />
	</main>
	<footer id="footer">
		<jsp:include page="${requestScope.footer}" />
	</footer>
</body>
</html>