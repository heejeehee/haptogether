// 그래프 숫자값 이용해서 조정하기
window.addEventListener("load", function() {
    // console.log(document.querySelector(".positivePercent").textContent)
    document.querySelector(".postitiveBarInner").style.cssText = "width: " + document.querySelector(".positivePercent").textContent + ";"
    document.querySelector(".negetiveBarInner").style.cssText = "width: " + document.querySelector(".negetivePercent").textContent + ";"
})