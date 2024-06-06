// 개인평가작성 부분
window.addEventListener("load", () => {
    document.querySelectorAll(".btnEvaluate").forEach(function(btnEval){
        btnEval.addEventListener("click", function(e) {
            console.log(e.target.parentNode.parentNode.parentNode)
            let roleAndbtn = e.target.parentNode.parentNode.parentNode
            // 이미 평가를 작성했다면 뭔가 조치를 취해야 할듯?
            roleAndbtn.querySelector(".evalArea").style.display = "flex"
        })
    })
})