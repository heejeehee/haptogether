<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<link rel="stylesheet" href="/haptogether/resources/css/layout/header.css" />
<header>
    <div class="main_home"><a href="/haptogether/main">홈</a></div>
    <div class="main_back">뒤로가기</div>
    <div class="main_logo"><a href="/haptogether/main">해프투게더</a></div>
    <!-- 비로그인일 경우 로그인 페이지로 -->
    <div class="main_profile"><a href="/haptogether/login">프로필</a></div>
    <!-- 로그인일 경우 세션 체크 후 프로필로 -->
</header>