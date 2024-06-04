<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="/haptogether/resources/css/profilePage/projectWritedDetail.css" />
<script src="/haptogether/resources/script/profilePage/projectWritedDetail.js"></script>

    <div class="detailWrap">
        <div class="detailHeader">
            내가 쓴 공고
        </div>
        <div class="projectWrap">
            <div class="projectName">
                프로젝트 제목
            </div>
            <div class="projectInfo">
                프로젝트 내용
            </div>
        </div>
        <div class="roleWrap">
            <div class="roleName">
                작성할때 정했던 역할 이름
            </div>
            <div class="applicationPeopleList">
                <div class="applicationPersonName">
                    사람이름
                </div>
                <div class="btnWrap">
                    <button type="button" class="btnProfile">프로필</button>
                    <button type="button" class="btnAccept">모집</button>
                </div>
            </div>
        </div>
        <div class="cmtWrap">
            <div class="cmtNameAndDetail">
                <div class="userName">
                    작성자
                </div>
                <div class="txtInfo">
                    작성내용입니다.
                </div>
            </div>
        </div>
        <div class="writeCmt">
            <textarea placeholder="내용을 입력해주세요.">

            </textarea>
            <button type="button" class="btnWrite">등록</button>
        </div>
        <div>
            <button type="button" class="btnEnd">마감하기</button>
        </div>
    </div>