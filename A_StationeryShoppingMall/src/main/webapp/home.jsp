<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<article class="mainWrap">
    <section class="slideBanner"></section>
    <section class="slideBanner" data-slide-time="2.5"><!--슬라이드 자동 실행값을 data-slide-time에 넘겨줘! 없으면 data-slide-time 제거!-->
        <ul class="bannerImg">
            <li><a href=""><img src="<%=request.getContextPath()%>/images/sample/banner01.jpg" alt="배너이미지"></a></li>
            <li><a href=""><img src="<%=request.getContextPath()%>/images/sample/banner02.jpg" alt="배너이미지"></a></li>
        </ul>
    </section>
    <section class="intro max1200">
        <div class="titleWrap">
            <small class="smallTitle">Why Cha&Na</small>
            <h2 class="title">단순한 판촉물이 아닌, 진심을 담은 작품을 만듭니다.</h2>
            <p class="subtitle">
                Cha&Na는 엄격한 기준을 거쳐 재료를 선별하고<br>
                기계로는 절대 구현할 수 없는 장인정신을 담아 상품을 제공합니다.
            </p>
        </div>
        <ul class="contents displayFlex flexWrap">  
            <li>
                <h4 class="middleTitle">Quality Over Quantity</h4>
                <p>
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci odio asperiores pariatur qui ratione voluptatibus maxime, accusamus sunt quibusdam tenetur obcaecati nam dolore unde ad. Est nulla dignissimos voluptatum vel.
                </p>
                <span><img src="<%=request.getContextPath()%>/images/main/why01.jpg" alt="master"></span>
            </li>
            <li>
                <h4 class="middleTitle">Long-Term Review</h4>
                <p>
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci odio asperiores pariatur qui ratione voluptatibus maxime, accusamus sunt quibusdam tenetur obcaecati nam dolore unde ad. Est nulla dignissimos voluptatum vel.
                </p>
                <span><img src="<%=request.getContextPath()%>/images/main/why02.jpg" alt="analysis"></span>
            </li>
            <li>
                <h4 class="middleTitle">Award Winning Team</h4>
                <p>
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci odio asperiores pariatur qui ratione voluptatibus maxime, accusamus sunt quibusdam tenetur obcaecati nam dolore unde ad. Est nulla dignissimos voluptatum vel.
                </p>
                <span><img src="<%=request.getContextPath()%>/images/main/why03.jpg" alt="award"></span>
            </li>
        </ul>
    </section>
    <section class="prd max1200">
        <div class="titleWrap">
            <small class="smallTitle">Selective Goods</small>
            <h2 class="title">한발 앞서 2022년을 준비하는 당신에게.</h2>
            <p class="subtitle">
                Cha&Na가 3개월 이상 직접 사용해 보며,<br>
                내구성, 디자인, 편의성을 고려한 다양한 다이어리와 캘린더를 만나보세요.
            </p>
        </div>
        <div class="contents">
            <ul class="diary">
                <li><a href=""></a></li>
            </ul>
            <ul class="calender">
                <li></li>
            </ul>
        </div>
    </section>
</article>