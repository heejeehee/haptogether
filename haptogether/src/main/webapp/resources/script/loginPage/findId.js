// 인증번호 발송 이메일 검증
window.addEventListener("load", function() {
    // 인증번호 발송 버튼 클릭 이벤트
    document.querySelector("#sendNumber").addEventListener("click", function() {
        let email = document.querySelector("input[type='email']")
        // @ 없을경우
        if(email.value.indexOf("@") === -1) {
            document.querySelector(".sendNumAlarm").textContent = "올바른 이메일 형식이 아닙니다."
            return;
        }
        // @ 가 2개 이상일 경우, 앞뒤로 글씨도 있어야 함
        // console.log(email.value.split("@").length)
        if(email.value.split("@").length !== 2 || email.value.split("@")[0].length < 1 || email.value.split("@")[1].length < 1) {
            document.querySelector(".sendNumAlarm").textContent = "올바른 이메일 형식이 아닙니다."
            return;
        }
        // @로 나눴을 때 뒤에 "." 이 있어야 함. 앞뒤로 글씨도 있어야 함
        // console.log(email.value.split("@")[1])
        // console.log(email.value.split("@")[1].split("."))
        // console.log(email.value.split("@")[1].split(".").length===2)
        if(email.value.split("@")[1].split(".").length !== 2 || email.value.split("@")[0].split(".")[0].length < 1 || email.value.split("@")[1].split(".")[1].length < 1) {
            document.querySelector(".sendNumAlarm").textContent = "올바른 이메일 형식이 아닙니다."
            return;
        }

        // 모든 경우 통과 시
        document.querySelector(".sendNumAlarm").textContent = "발송완료." 
    })
})