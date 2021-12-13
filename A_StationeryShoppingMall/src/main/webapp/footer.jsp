<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="logoWrap imgWrap">
    <img class="logo" src="<%=request.getContextPath()%>/images/logo_footer.png" alt="logo">
</div>
<div class="footerGnbWrap"><jsp:include page="${requestScope.menu }" /></div>
<section class="csCenter">
    <ul>
        <li class="company">(주)Cha&Na</a></li>
        <li class="call">
            <a href="tel:관리자 전화번호 넘겨줘">Tel. <span class="dataSample">00-000-0000<!--전화번호 넘겨줘--></span></a>
        </li>
        <li class="mail">
            <a href="mailto:관리자 이메일 주소 넘겨줘">Email. <span class="dataSample">aa@aaa.com<!--이메일 넘겨줘--></span></a>
        </li>
        <li class="addr">
            <span class="dataSample"><!--회사주소 넘겨줘--></span>
        </li>
        <li class="addr">
            사업자 등록 번호: <span class="dataSample">000-00-00000<!--사업자 번호 넘겨줘--></span></a>
        </li>
        <li class="addr">
            통신판매업 신고: <span class="dataSample">0000-ㅁㅁㅁㅁ-0000<!--통신판매 번호 넘겨줘--></span></a>
        </li>
    </ul>
    <p class="copyright">Copyright 2021. 차은정 and 나슬기 all rights reserved.</p>
</section>