// 아이디를 확인했는지 체크
let isChkId = false;

// 아이디 확인 검증
window.addEventListener("load", function() {
    document.querySelector("#idChk").addEventListener("click", function() {
        let id = document.querySelector("#userId").value
        if(id === "" || id.trim() === "") {
            document.querySelector(".idAlarm").textContent = "올바른 아이디를 입력 후 확인을 눌러주세요."
            return
        }
        
        isChkId = true;
        document.querySelector(".idAlarm").textContent = "확인 완료."
        document.querySelector("#userId").setAttribute("readonly", "readonly")
        document.querySelector("#userId").style.cssText = "background-color: #c5c5c5; color: #666666;"
    })
})

// 인증번호 발송 이메일 검증
window.addEventListener("load", function () {
    // 인증번호 발송 버튼 클릭 이벤트
    document.querySelector("#sendNumber").addEventListener("click", function () {
        let email = document.querySelector("input[type='email']")
        // 아이디를 체크했는지 확인
        if(isChkId === false) {
            document.querySelector(".sendNumAlarm").textContent = "우선 아이디를 확인해 주세요."
            document.querySelector("#userId").focus()
            return;
        }
        // @ 없을경우
        if (email.value.indexOf("@") === -1) {
            document.querySelector(".sendNumAlarm").textContent = "올바른 이메일 형식이 아닙니다."
            return;
        }
        // @ 가 2개 이상일 경우, 앞뒤로 글씨도 있어야 함
        // console.log(email.value.split("@").length)
        if (email.value.split("@").length !== 2 || email.value.split("@")[0].length < 1 || email.value.split("@")[1].length < 1) {
            document.querySelector(".sendNumAlarm").textContent = "올바른 이메일 형식이 아닙니다."
            return;
        }
        // @로 나눴을 때 뒤에 "." 이 있어야 함. 앞뒤로 글씨도 있어야 함
        // console.log(email.value.split("@")[1])
        // console.log(email.value.split("@")[1].split("."))
        // console.log(email.value.split("@")[1].split(".").length===2)
        if (email.value.split("@")[1].split(".").length !== 2 || email.value.split("@")[0].split(".")[0].length < 1 || email.value.split("@")[1].split(".")[1].length < 1) {
            document.querySelector(".sendNumAlarm").textContent = "올바른 이메일 형식이 아닙니다."
            return;
        }

        // 모든 경우 통과 시
        document.querySelector(".sendNumAlarm").textContent = "발송완료."
    })
})