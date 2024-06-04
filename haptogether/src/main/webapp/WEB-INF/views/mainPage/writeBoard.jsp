<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="/haptogether/resources/css/mainPage/writeBoard.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<!-- colorSyntax -->
<link rel="stylesheet" href="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.min.css" />

<script src="/haptogether/resources/script/mainPage/wirteBoard.js"></script>
<!-- editor -->
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<!-- colorSyntax -->
<script src="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.js"></script>
<script src="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.min.js"></script>




<div class="forFlex">
	<div class="endWriteButtonWrap">
	    <button type="button">작성완료</button>
	</div>
	<div class="nameInputWrap">
	    <input type="text" class="nameInput" placeholder="제목을 입력하세요">
	</div>
	<div class="textEditorWrap">
	    <div id="textEditor"></div>
	</div>
	<div class="setRoles">
	    <div class="addRole">
	        <span>※ 역할</span>
	        <button type="button" id="addRoleButton">추가</button>
	    </div>
	    <div class="role">
	        <ol>
	
	        </ol>
	    </div>
	</div>
</div>