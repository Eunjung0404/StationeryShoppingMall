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

document.addEventListener("DOMContentLoaded", function(){
    _searchIconClick();
});