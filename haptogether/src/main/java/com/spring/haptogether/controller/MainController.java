package com.spring.haptogether.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	// 로그인 페이지
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}

	// 로그인 - 회원가입
	@RequestMapping("/signUp")
	public String signUpPage() {
		return "signUp";
	}

	// 로그인 - 아이디찾기
	@RequestMapping("/findId")
	public String findIdPage() {
		return "findId";
	}

	// 로그인 - 아이디찾기
	@RequestMapping("/findPw")
	public String findPwPage() {
		return "findPw";
	}

	// 메인페이지
	@RequestMapping("/main")
	public String mainPage() {
		return "main";
	}

	// 메인 - 검색
	@RequestMapping("/main/search")
	public String searchPage() {
		return "search";
	}

	// 메인 - 좋아요
	@RequestMapping("/main/pageto/loveList")
	public String loveListPage() {
		return "loveList";
	}

	// 메인 - 모집공고 작성
	@RequestMapping("/main/pageto/writeBoard")
	public String writeBoardPage() {
		return "writeBoard";
	}

	// 메인 - 모집공고 보기
	@RequestMapping("/main/showBoard")
	public String showBoardPage() {
		return "showBoard";
	}

	// 프로필 페이지
	@RequestMapping("/profile/pageto/myProfile")
	public String myProfilePage() {
		return "myProfile";
	}

	// 프로필 페이지 - 프로젝트 신청현황
	@RequestMapping("/profile/pageto/paStatus")
	public String projectApplicationStatusPage() {
		return "paStatus";
	}

	// 프로필 페이지 - 내가 쓴 공고
	@RequestMapping("/profile/pageto/projectWrited")
	public String projectWritedPage() {
		return "projectWrited";
	}
	
	// 프로필 페이지 - 내가 쓴 공고
	@RequestMapping("/profile/pageto/projectWritedDetail")
	public String projectWritedDetailPage() {
		return "projectWritedDetail";
	}
	
	// 프로필 페이지 - 진행중인 프로젝트
	@RequestMapping("/profile/pageto/doingProject")
	public String doingProjectPage() {
		return "doingProject";
	}
	
	// 프로필 페이지 - 중단한 프로젝트
	@RequestMapping("/profile/pageto/stopProject")
	public String stopProjectPage() {
		return "stopProject";
	}
	
	// 프로필 페이지 - 완료한 프로젝트
	@RequestMapping("/profile/pageto/doneProject")
	public String doneProjectPage() {
		return "doneProject";
	}
}
