<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<link rel="stylesheet" href="/haptogether/resources/css/loginPage/findPw.css" />
<script src="/haptogether/resources/script/loginPage/findPw.js"></script>

    <div class="findPwWrap">
        <div class="findPwHeader">
            비밀번호 찾기
        </div>
        <div class="findPwDetail">
	        <div class="findPwTxt">
	            아이디를 입력하세요
	        </div>
	        <div>
	            <input type="text" id="userId"> <button type="button" id="idChk">확인</button>
	        </div>
	        <div>
	            <span class="idAlarm"></span>
	        </div>
	        <div class="getNumberTxt">
	            가입 당시 입력한 이메일을 입력하세요
	        </div>
	        <div class="for_align">
	            <input type="email"> <button type="button" id="sendNumber">인증번호 발송</button>
	        </div>
	        <div>
	            <span class="sendNumAlarm"></span>
	        </div>
        </div>

        <div class="findPwBtnWrap">
            <div>비밀번호를 찾을 수 없다면?</div>
            <button type="button" id="inquireBtn">문의하기</button>
        </div>
    </div>