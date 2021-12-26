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
let _bannerFlag = 0;
let _slideBanner = document.getElementsByClassName("slideBanner");
let _bannerWrap, _banner, _autoSlide, _selectBanner, _addB, _paginB, _paginBLi;
function _slide(move) {
    if (_bannerFlag < 1) {//초기 세팅
        _bannerFlag++;
        if (_slideBanner.length == 0) { return false; }//배너 모듈이 없다면 함수 종료

        _bannerWrap = _slideBanner[0].getElementsByClassName("bannerImg");
        _banner = _bannerWrap[0].getElementsByTagName("li");
        //배너 이미지가 1개 일 때 함수 종료
        if (_banner.length <= 1) { return false; }

        setBanner();
        _bannerDragDrop();
        _autoSlide = _slideBanner[0].getAttribute("data-slide-time")*1000;
        if (_autoSlide) {
            setInterval(function() { _bannerNext(); }, _autoSlide);
        }
    }
    _banner = _bannerWrap[0].getElementsByTagName("li");
    _selectBanner = _bannerWrap[0].getElementsByClassName("select");
    if (move == "prev") {
        _bannerPrev();
    } else if (move == "next") {
        _bannerNext();
    }
}
function setBanner() {
    //화살표 버튼 세팅
    let _arrow = document.createElement("button");
    _arrow.setAttribute("class", "arrowBtn prevBtn");
    _arrow.setAttribute("onclick", "_slide('prev')");
    _slideBanner[0].appendChild(_arrow);
    _arrow = document.createElement("button");
    _arrow.setAttribute("class", "arrowBtn nextBtn");
    _arrow.setAttribute("onclick", "_slide('next')");
    _slideBanner[0].appendChild(_arrow);
    //페이징 세팅
    _pagingB = document.createElement("ul");
    _pagingB.setAttribute("class", "paging displayFlex");
    _slideBanner[0].appendChild(_pagingB);
    _paginBLi = document.createElement("li");
    _paginBLi.setAttribute("class", "select");
    _pagingB.appendChild(_paginBLi);
    //배너 세팅
    _banner[0].classList.add("select");
    for (let i = 1; i < _banner.length; i++) {
        _banner[i].classList.add("after");
        _paginBLi = document.createElement("li");
        _pagingB.appendChild(_paginBLi);
    }
    _addB = document.createElement("li");
    _addB.classList.add("after");
    _addB.innerHTML = _banner[0].innerHTML;
    _bannerWrap[0].appendChild(_addB);
    _addB = document.createElement("li");
    _addB.classList.add("before");
    _addB.innerHTML = _banner[_banner.length-2].innerHTML;
    _bannerWrap[0].prepend(_addB);
}
function _bannerPrev() {
    if (_banner[1] == _selectBanner[0]) {
        _addB = document.createElement("li");
        _addB.setAttribute("class","before");
        _addB.innerHTML = _banner[_banner.length-1].innerHTML;
        _banner[_banner.length-1].remove();
        _bannerWrap[0].prepend(_addB);
    }
    for (let i = 0; i < _banner.length; i++) {
        _li = _banner[i+1];
        if (_li == _selectBanner[0]) {
            _li.previousElementSibling.setAttribute("class","select");
            _selectBanner[1].setAttribute("class","after");
            _paginB = _slideBanner[0].querySelector(".paging");
            _paginBLi = _paginB.querySelector(".select");
            if (_paginBLi.previousElementSibling == null) {
                _paginB.children[_paginB.childElementCount-1].classList.add("select");
            } else {
                _paginBLi.previousElementSibling.classList.add("select");
            }
            _paginBLi.classList.remove("select");
            return;
        }
    }
}
function _bannerNext() {
    if (_banner[_banner.length-2] == _selectBanner[0]) {
        _addB = document.createElement("li");
        _addB.setAttribute("class","after");
        _addB.innerHTML = _banner[0].innerHTML;
        _banner[0].remove();
        _bannerWrap[0].append(_addB);
    }
    for (let i = 0; i < _banner.length; i++) {
        _li = _banner[i-1];
        if (_li == _selectBanner[0]) {
            _li.nextElementSibling.setAttribute("class","select");
            _selectBanner[0].setAttribute("class","before");
            _paginB = _slideBanner[0].querySelector(".paging");
            _paginBLi = _paginB.querySelector(".select");
            if (_paginBLi.nextElementSibling == null) {
                _paginB.children[0].classList.add("select");
            } else {
                _paginBLi.nextElementSibling.classList.add("select");
            }
            _paginBLi.classList.remove("select");
            return;
        }
    }
}
function _bannerDragDrop() {
    if (_slideBanner.length != 0) {
        let _start, _end;
        $(".bannerImg").off().on("touchstart dragstart", function (e) {
            _start = e.clientX; if (!e.clientX) { _start = e.changedTouches[0].clientX; }
        });
        $(".bannerImg").on("touchend dragend", function (e) {
            _end = e.clientX; if (!e.clientX) { _end = e.changedTouches[0].clientX; }
            if (_start < _end) {
                _bannerPrev();
            }else{
                _bannerNext();
            }
        });
    }
}

/* 문서 로드 완료 시 실행 함수 */
document.addEventListener("DOMContentLoaded", function(){
    _searchIconClick();
    _setValue();
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

    _slide();
}