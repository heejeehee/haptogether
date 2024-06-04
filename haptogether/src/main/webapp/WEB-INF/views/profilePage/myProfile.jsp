<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="/haptogether/resources/css/profilePage/myProfile.css" />
<script src="/haptogether/resources/script/profilePage/myProfile.js"></script>

    <div class="profileWrap">
        <div class="profileDetail">
            <div class="profileDetailHeader">
                내 평가점수
            </div>
            <div style="margin-top: 15px;">
                진행중인 프로젝트 : 1
            </div>
            <div>
                완료한 프로젝트 : 1
            </div>
            <div class="myScore" style="margin-top: 15px;">
                <div>
                    <div> 긍정점수 </div>
                    <div class="postitiveBarOuter"> 
                        <div class="postitiveBarInner"> </div> 
                    </div> 
                    <div class="positivePercent"> 50% </div>
                </div>
                <div>
                    <div> 부정점수 </div> 
                    <div class="negetiveBarOuter"> 
                        <div class="negetiveBarInner"> </div> 
                    </div> 
                    <div class="negetivePercent"> 0% </div>
                </div>
            </div>
        </div>
        <div class="profileMenu">
            <div>
                <a href="/haptogether/profile/pageto/paStatus">프로젝트 신청현황</a>
            </div>
            <div>
                <a href="/haptogether/profile/pageto/projectWrited">내가 쓴 공고</a>
            </div>
            <div>
                <a href="/haptogether/profile/pageto/doingProject">진행중인 프로젝트</a>
            </div>
            <div>
                <a href="/haptogether/profile/pageto/stopProject">중단한 프로젝트</a>
            </div>
            <div>
                완료한 프로젝트
            </div>
            <div>
                내가 쓴 평가
            </div>
            <div>
                내가 받은 평가
            </div>
            <div>
                문의하기
            </div>
            <div>
                신고하기
            </div>
        </div>
    </div>