<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<link rel="stylesheet" href="/haptogether/resources/css/loginPage/findId.css" />
<script src="/haptogether/resources/script/loginPage/findId.js"></script>

    <div class="findIdWrap">
        <div class="findIdHeader">
            아이디 찾기
        </div>

        <div class="findIdDetail">
            <div class="findIdTxt">
                가입 당시 입력한 이메일을 입력하세요.
            </div>
            <div class="for_align">
                <input type="email"> <button type="button" id="sendNumber">인증번호 발송</button>
            </div>
            <div class="sendNumAlarm">
                
            </div>

            <br>

            <div class="getNumberTxt">
                인증번호를 입력하세요.
            </div>
            <div>
                <input type="text"> <button type="button">인증하기</button>
            </div>
        </div>

        <div class="findIdBtnWrap">
            <div>아이디를 찾을 수 없다면?</div>
            <button type="button" id="inquireBtn">문의하기</button>
        </div>

    </div>