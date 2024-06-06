<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="/haptogether/resources/css/profilePage/doneProjectDetail.css" />
<script src="/haptogether/resources/script/profilePage/doneProjectDetail.js"></script>

    <div class="detailWrap">
        <div class="detailHeader">
            후기 작성 및 보기
        </div>
        <div class="projectWrap">
            <div class="projectName">
                프로젝트 제목
            </div>
            <div class="projectInfo">
                프로젝트 내용
            </div>
        </div>

        <div class="userEvaluateWrap">
            <div class="userWrap">
                <div class="roleAndbtn">
                    <div class="roleName">
                        1번 역할
                    </div>
                    <div class="userSet">
                        <div class="userName">
                            김박사
                        </div>
                        <div class="btnWrap">
                            <button type="button" class="btnEvaluate">평가</button>
                            <button type="button" class="btnGood">긍정</button>
                            <button type="button" class="btnBad">부정</button>
                        </div>
                    </div>
                    <div class="evalArea">
                        <textarea placeholder="내용을 입력하세요."></textarea>
                        <button type="button">평가<br>작성</button>
                    </div>
                </div>
            </div>

            <div class="userWrap">
                <div class="roleAndbtn">
                    <div class="roleName">
                        2번 역할
                    </div>
                    <div class="userSet">
                        <div class="userName">
                            홍박사
                        </div>
                        <div class="btnWrap">
                            <button type="button" class="btnEvaluate">평가</button>
                            <button type="button" class="btnGood">긍정</button>
                            <button type="button" class="btnBad">부정</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="evaluateProjectWrap">
            <div class="evaluatePersonWrap">
                <div class="personName">
                    김박사
                </div>
                <div class="personCmt">
                    프로젝트 잘 하고 갑니다~
                </div>
            </div>

            <div class="evaluatePersonWrap">
                <div class="personName">
                    홍박사
                </div>
                <div class="personCmt">
                    재밌게 하고 가요~
                </div>
            </div>
        </div>

        <div class="cmtArea">
            <textarea placeholder="내용을 입력하세요."></textarea>
            <button type="button">등록</button>
        </div>
    </div>