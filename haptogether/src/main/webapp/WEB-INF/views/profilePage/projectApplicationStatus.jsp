<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="/haptogether/resources/css/profilePage/projectApplicationStatus.css" />
<script src="/haptogether/resources/script/profilePage/projectApplicationStatus.js"></script>

    <div class="statusWrap">
        <div class="statusHeader">
            프로젝트 신청현황
        </div>
        <div class="projectInfoBox">
            <div class="prodectStatus">
                모집공고
                <div class="loveInfoSet">
                    <div class="loveOn"></div>
                    <div class="loveOff"></div>
                </div>
            </div>
            <div class="projectName">
                제목이 들어가는 구간
            </div>
            <div class="projectDetail">
                주제를 한줄로 표현한 구간!(글자수 제한하기)
            </div>
        </div>
        <div class="btnWrap">
            <div class="modifyDiv"><button type="button" class="modifyBtn">신청수정</button></div>
            <div class="cancelDiv"><button type="button" class="cancelBtn">신청취소</button></div>
        </div>
    </div>