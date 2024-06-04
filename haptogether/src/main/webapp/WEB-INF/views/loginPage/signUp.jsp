<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<link rel="stylesheet" href="/haptogether/resources/css/loginPage/signUp.css" />
<script src="/haptogether/resources/script/loginPage/signUp.js"></script>

<form method="post" action="#">
    <div class="signUpWrap">
        <div class="signUpHeader">
            회원가입
        </div>
        <div class="idWrap">
            <div class="idHeader">아이디</div>
            <input type="text" placeholder="아이디 입력 (6~20자)" id="userId">
            <button type="button" id="chkId">중복확인</button>
            <div class="warnArm"></div>
        </div>

        <div class="pwWrap">
            <div class="pwHeader">비밀번호</div>
            <input type="password" placeholder="비밀번호 입력 (문자, 숫자, 특수문자 포함 8~20자)" id="userPw">
            <div class="warnArm"></div>
        

            <div class="pwHeader">비밀번호 확인</div>
            <input type="password" placeholder="비밀번호 재입력" id="pwChk">
            <div class="warnArm"></div>
        </div>

        <div class="nicknameWrap">
            <div class="nicknameHeader">닉네임</div>
            <input type="text" placeholder="닉네임 입력 (6~12글자)" id="userNickname">
            <div class="warnArm"></div>
        </div>

        <div class="emailWrap">
            <div class="emailHeader">이메일</div>
            <input type="text" class="emailFirst"> @ <input type="text" class="emailLast">
            <select>
                <option value="">직접입력</option>
                <option value="naver.com">naver.com</option>
                <option value="kakao.com">kakao.com</option>
                <option value="daum.net">daum.net</option>
                <option value="nate.com">nate.com</option>
                <option value="gmail.com">gmail.com</option>
            </select>
            <button type="button" id="sendEmail">인증번호 발송</button> <br>
            <input type="text" placeholder="인증번호를 입력하세요.">
            <button type="button">인증번호 확인</button>
            <div class="warnArm"></div>
        </div>

        <div class="signUpBtnWrap">
            <button type="button" id="submit">가입하기</button>
            <button type="reset" id="resetBtn">다시쓰기</button>
        </div>
    </div>
</form>