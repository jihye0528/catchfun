package com.catchmind.catchfun.funding.model.service;

import java.util.ArrayList;

import com.catchmind.catchfun.funding.model.vo.FundingList;
import com.catchmind.catchfun.funding.model.vo.Maker;
import com.catchmind.catchfun.funding.model.vo.News;
import com.catchmind.catchfun.funding.model.vo.PersonQuestion;
import com.catchmind.catchfun.funding.model.vo.Project;
import com.catchmind.catchfun.funding.model.vo.Reply;
import com.catchmind.catchfun.funding.model.vo.Report;
import com.catchmind.catchfun.funding.model.vo.Reward;
import com.catchmind.catchfun.funding.model.vo.Wishlist;

public interface FundingService {
	
	// 프로젝트 정보 조회
	Project selectProject(String pno);
	
	// 메이커 정보 조회
	Maker selectMaker(String pno);
	
	// 펀딩 내역 정보 조회 (현재 펀딩금액, 수량 파악)
	FundingList selectFunding(String pno);
	
	// 새소식 리스트 조회
	ArrayList<News> selectNews(String pno);
	
	// 리워드 리스트 조회
	ArrayList<Reward> selectReward(String pno);
	
	// 댓글 리스트 조회
	ArrayList<Reply> selectReplyList(String pno);
	
	// 댓글 작성
	int insertReply(Reply r);
	
	// 댓글 신고
	int banReply(String replyNo);
	
	// 개설자 문의
	int insertQuestion(PersonQuestion pq);
	
	// 개설자 신고
	int insertReport(Report r);
	
	// 찜하기 
	int insertWishlist(Wishlist w);
	
	int selectWish(Wishlist w);
	
	// 찜하기 주혁이 버전
	int selectWishlistCount(Wishlist w);
	
	int addWishlist(Wishlist w);
	
	int deleteWishlist(Wishlist w);
	
}
