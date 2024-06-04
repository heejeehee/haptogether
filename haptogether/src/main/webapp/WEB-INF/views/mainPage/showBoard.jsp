<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="/haptogether/resources/css/mainPage/showBoard.css" />


<div class="forFlex">
	<div class="showBoardHeader">
	    모집공고
	</div>
	<div class="boardWrap">
	    <div class="boardName">
	        제목이 나오는 구간입니다.
	    </div>
	    <div class="boardDetail">
	        내용이 나오는 구간입니다.<br>
	        글쓰기의 인풋상자에 들어간 내용을 받습니다.
	    </div>
	</div>
	<div class="rolesWrap">
	    <span>※ 역할</span>
	    <div>
	        <input type="checkbox"> 1번역할(역할이 들어갈 구간)
	    </div>
	</div>
	
	<div class="btnWrap">
	    <button type="button">신청하기</button>
	    <!-- 세션체크 해서 로그인했으면 신청하기 보이고
		    이미신청했으면 신청취소로 보이고
		    로그인 안했으면 로그인창으로 -->
	</div>
</div>