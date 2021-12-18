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

/* 문서 로드 완료 시 실행 함수 */
document.addEventListener("DOMContentLoaded", function(){
    _searchIconClick();
    _actualResizeHandler();
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
}