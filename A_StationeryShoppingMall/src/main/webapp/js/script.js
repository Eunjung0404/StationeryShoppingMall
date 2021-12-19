/* 브라우저 크기 감지 함수 */
var _device;
function _checkBrowserW () {
    let _browserWidth = document.body.offsetWidth;
    if (_browserWidth > 1024) {//PC일 때
        return "PC";
    } else if (_browserWidth > 768) {//Tab일 때
        return "Tab";
    } else {//MO일 때
        return "MO";
    }
}

/* 카테고리 메뉴 드롭 함수 */
function _showGnb() {
    document.querySelector("#gnb").classList.add("showGnb");
}
function _hideGnb() {
    document.querySelector("#gnb").classList.remove("showGnb");
}
function _clickNav(_dropNav) {
    _dropNav.off().on("click", function() {
        if (!$(this).hasClass("showDepth02")) {
            _hideNav(_dropNav);
            $(this).addClass("showDepth02");
            $(this).children(".depth02").slideDown();
        } else {
            _hideNav(_dropNav);
        }
    });
}
function _hideNav(_dropNav) {
    _dropNav.removeClass("showDepth02");
    _dropNav.children(".depth02").slideUp();
}

/* 검색아이콘 클릭 시 검색바 노출기능 */
function _searchIconClick() {
    document.querySelector(".goSearchResult").addEventListener("click", function () {
        if(document.querySelector("#header").classList.contains("searchOn")) {
            document.querySelector("#header").classList.remove("searchOn");
        }else{
            document.querySelector("#header").classList.add("searchOn");
        }
    });
}

/* input 값 실시간 감지 후 value 세팅 */
function _setValue() {
    let _oldVal;
    $("input").on("propertychange change keyup paste input", function() {
        let _currentVal = $(this).val();
        if(_currentVal == _oldVal) {
            return;
        }

        _oldVal = _currentVal;
        return $(this).attr("value",_currentVal);
    });
}

/* 배너 */
function _slideBanner() {
    let _bannerWrap = document.querySelector(".slideBanner");
    if (_bannerWrap == null) {
        return false;
    }

    let _banner = _bannerWrap.querySelectorAll("li");
    let _selectBanner = _bannerWrap.querySelector("li.select");
    let _browserWidth = document.body.offsetWidth;
    _bannerWrap.style.width = _browserWidth*_banner.length+"px";

    // select 기준으로 양 옆에 형제요소가 없을 때
        // 마지막 li를 select 왼쪽에 추가
        // 첫번째 li를 select 오른쪽에 추가
    // _bannerWrap.appendChild = _banner[_banner.length-1];
    // _selectBanner.classList.remove("select");
    // _selectBanner.nextElementSibling.classList.add("select");
    // _selectBanner = _bannerWrap.querySelector("li.select");
}

/* 문서 로드 완료 시 실행 함수 */
document.addEventListener("DOMContentLoaded", function(){
    _searchIconClick();
    _actualResizeHandler();
    _setValue();
});

/* 브라우저 크기 변경 시 재실행 함수 */
window.addEventListener("resize", _finishResize, false);
var _resizeTimeout;
function _finishResize() {//크기 변경 때 마다 바로바로 함수를 실행하지 않게 텀을 두는 함수
    if ( !_resizeTimeout ) {
        _resizeTimeout = setTimeout(function() {
            _resizeTimeout = null;
            _actualResizeHandler();//실제 크기변경 시 실행되는 함수는
        }, 500);
    }
}
function _actualResizeHandler() {
    _device = _checkBrowserW();

    let _dropNav = $("#header #gnb .depth01 > li");
    if (_device == "MO") {
        _clickNav(_dropNav);
    }

    _slideBanner();
}