window.addEventListener("load", ()=>{
    let idPass = false;
    let pwPass = false;
    let pwPassTemp = false;
    let nicknamePass = false;
    let emailPass = false;


    let userId = document.querySelector("#userId")  // 아이디 인풋
    let chkId = document.querySelector("#chkId")    // 아이디 중복확인 버튼
    let userPw = document.querySelector("#userPw")  // 비밀번호 인풋
    let pwChk = document.querySelector("#pwChk")    // 비밀번호 확인 인풋
    let userNickname = document.querySelector("#userNickname") // 닉네임 인풋
    let emailFirst = document.querySelector(".emailFirst")    // 이메일 1번 인풋
    let emailLast = document.querySelector(".emailLast")  // 이메일 2번 인풋


    chkId.addEventListener("click", validateId) // 중복확인 클릭 이벤트
    userPw.addEventListener("blur", validatePassword)   // 비밀번호 유효성 검사 이벤트
    pwChk.addEventListener("blur", validatePassword)    // 비밀번호 유효성 검사 이벤트
    userNickname.addEventListener("blur", validateNickname) // 닉네임 유효성 검사 이벤트
    document.querySelector("#sendEmail").addEventListener("click", getEmail)    // 이메일 인증번호 발송 이벤트
    

    // 아이디 유효성 검사
    function validateId() {
        console.log(userId.value.trim())
        console.log(userId.value.length)
        // 길이 확인
        if (userId.value.length < 6 || userId.value.length > 20) {
            userId.parentNode.querySelector(".warnArm").textContent = "6~20 글자의 아이디를 입력해 주세요."
            idPass = false;
            return
        } 
        // 특수문자 확인
        if (!/[a-z]|[0-9]/.test(userId.value)) {
            userId.parentNode.querySelector(".warnArm").textContent = "영어 대문자, 한글, 특수문자는 사용이 불가능합니다."
            idPass = false;
            return
        }
        // 앞뒤 공백 확인
        if(userId.value.trim().length !== userId.value.length) {
            userId.parentNode.querySelector(".warnArm").textContent = "띄어쓰기(스페이스바) 없이 입력해 주세요"
            idPass = false;
            return
        }
        // 중간 띄어쓰기 확인
        if (/\s/.test(userId.value)) {
            userId.parentNode.querySelector(".warnArm").textContent = "띄어쓰기(스페이스바) 없이 입력해 주세요"
            idPass = false;
            return
        }

        // 유효할 경우
        if (confirm(userId.value + "\n이 아이디를 사용하시겠습니까?")) {
            userId.parentNode.querySelector(".warnArm").textContent = "아이디 사용 가능."
            userId.setAttribute("readonly", "readonly")
            idPass = true;
            return
        }
          
    }

    // 비밀번호 유효성 검사
    function validatePassword() {
        // 비밀번호 유효성 검사
        if (!validatePasswordStrength()) {
            pwChk.parentNode.querySelectorAll(".warnArm")[0].textContent = "비밀번호는 최소 8자 이상이어야 하며, 대소문자, 숫자, 특수문자가 포함되어야 합니다."
            pwPass = false;
            return
        } else {
            pwChk.parentNode.querySelectorAll(".warnArm")[0].textContent = ""
        }

        // 비밀번호와 확인 비밀번호가 일치하는지 확인
        if (userPw.value !== pwChk.value) {
            pwChk.parentNode.querySelectorAll(".warnArm")[1].textContent = "비밀번호와 비밀번호 확인이 일치하지 않습니다."
            pwPass = false;
            return
        } else {
            pwChk.parentNode.querySelectorAll(".warnArm")[1].textContent = ""
        }


        pwChk.parentNode.querySelectorAll(".warnArm")[0].textContent = ""
        pwChk.parentNode.querySelectorAll(".warnArm")[1].textContent = ""
        pwPass = true;
        return
    }

    // 비밀번호 유효성 검사 함수
    function validatePasswordStrength() {
        // 최소 길이 검사
        if (userPw.value.length < 8 || userPw.value.length > 20) {
            pwPass = false;
            return 
        }

        // 대문자 포함 여부 검사
        if (!/[A-Z]/.test(userPw.value)) {
            pwPass = false;
            return
        }

        // 소문자 포함 여부 검사
        if (!/[a-z]/.test(userPw.value)) {
            pwPass = false;
            return
        }

        // 숫자 포함 여부 검사
        if (!/\d/.test(userPw.value)) {
            pwPass = false;
            return
        }

        // 특수문자 포함 여부 검사
        if (!/[!@#$%^&*()-_=+{};:,<.>]/.test(userPw.value)) {
            pwPass = false;
            return
        }

        // 모든 조건 충족 시 유효한 비밀번호로 판별
        pwPassTemp = true;
        return
    }

    // 닉네임 검사 함수
    function validateNickname() {
        if (userNickname.value.length < 6 || userNickname.value.length > 12) {
            userNickname.parentNode.querySelector(".warnArm").textContent = "6~12글자의 닉네임을 입력해 주세요."
            nicknamePass = false;
            return
        }
        // 특수문자 검사
        if (/[!@#$%^&*()-_=+{};:,<.>]/.test(userNickname.value)) {
            userNickname.parentNode.querySelector(".warnArm").textContent = "특수문자는 사용이 불가능합니다."
            nicknamePass = false;
            return
        }

        // 모든 조건 충족 시 유효한 닉네임으로 판별
        nicknamePass = true;
        return
    }

    // 이메일 값 얻어서 보내기
    function getEmail() {
        console.log(emailFirst.value)
        console.log(emailLast.value)
        if(!(emailFirst.value.length > 0 && emailLast.value.length > 0)) {
            document.querySelector(".emailWrap").querySelector(".warnArm").textContent = "이메일이 입력되지 않았습니다. 이메일을 입력하세요."
        } else {
            document.querySelector(".emailWrap").querySelector(".warnArm").textContent = "인증번호 발송 완료."
            console.log(emailFirst.value + "@" + emailLast.value)
        }
    }
    // 이메일 인풋상자 이벤트
    document.querySelector(".emailWrap").querySelector("select").addEventListener("change", function() {
        emailLast.value = document.querySelector(".emailWrap").querySelector("select").value
        if(document.querySelector(".emailWrap").querySelector("select").value === "") {
            emailLast.removeAttribute("readonly")
        } else {
            emailLast.setAttribute("readonly", "readonly")
        }
    })
    
})