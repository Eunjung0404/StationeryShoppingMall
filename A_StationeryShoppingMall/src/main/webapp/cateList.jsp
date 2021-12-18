<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="prdListWrap">
    <ul>
        <li class="item" data-prdNum="상품번호값 넘겨줘">
            <div class="thumb"><img src="<%=request.getContextPath()%>/images/sample/prdThumb.jpg" alt="썸네일"></div>
            <p class="name">
                <span class="dataSample">내추럴 노트<!--상품명 넘겨줘--></span>
            </p>
            <p class="oriPrice">
                <span class="dataSample">6,100<!--소비자가격 넘겨줘(천단위 콤마)--></span>원
            </p>
            <p class="sellPrice">
                <span class="dataSample">3,100<!--판매가격 넘겨줘(천단위 콤마)--></span>원
            </p>
            <button class="basket">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><polygon class="cls-1" points="87.03 92.9 12.97 92.9 19.89 26.57 80.11 26.57 87.03 92.9"></polygon><path class="cls-1" d="M36.55,35.09V20.55a13.45,13.45,0,0,1,26.9,0V35.09"></path></svg>
            </button>
        </li>
    </ul>
</section>