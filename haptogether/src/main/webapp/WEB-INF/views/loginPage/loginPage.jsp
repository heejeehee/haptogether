<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<link rel="stylesheet" href="/haptogether/resources/css/loginPage/loginPage.css" />
<div class="loginWrap">
    <div>
        <input type="text" name="userId">
    </div>
    <div>
        <input type="password" name="userPw">
    </div>
    <div>
        <button type="submit" id="loginBtn">로그인</button>
    </div>
    <div class="loginServiceButton">
        <ul>
            <li>
                <a href="/haptogether/signUp">회원가입</a>
            </li>
            <li>
                <a href="/haptogether/findId">아이디 찾기</a>
            </li>
            <li>
                <a href="/haptogether/findPw">비밀번호 찾기</a>
            </li>
        </ul>
    </div>
</div>