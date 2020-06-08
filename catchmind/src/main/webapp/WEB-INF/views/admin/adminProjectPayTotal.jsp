<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer {
	text-align: center;
	/* padding: 70px; */
	margin-left: 250px;
	margin-top: 50px;
	min-width: 1050px;
}
.tb tr{
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../common/admin.jsp"/>
	
	<div class="outer">
	<h2>결제내역 리스트(입금대기)</h2><br>
	<label>결제를 관리합니다.</label><br>
	
	
	<div class="k_btn">
		<input type="text" name="keyword" placeholder="아이디 입력"> <button type="button">조회</button>
	</div>
	<br>
	입금대기 수 : 3 개
	<br><br>

	<div>
		<center>
			<table class="tb" border="1">
				<thead>
					<tr>
						<th width="200px">프로젝트명</th>
						<th width="150px">등록자ID</th>
						<th width="150px">목표액</th>
						<th width="150px">펀딩액(달성률)</th>
						<th width="100px">종료일</th>
						<th width="100px">카테고리</th>
						<th width="150px">포인트 예상금액(93%)</th>
						<th width="150px">포인트 발급 상태</th>
						<th width="100px">발급(버튼)</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>알록달록 양말</td>
						<td>hohoho55</td>
						<td>1,300,000</td>
						<td>2,600,000(200%)</td>
						<td>2020-05-20</td>
						<td>의류</td>
						<td>2,418,000</td>
						<td>미발급</td>
						<td><button type="button">발급하기</button></td>
					</tr>
					<tr>
						<td>양면 모니터</td>
						<td>momo7</td>
						<td>100,000,000</td>
						<td>200,000,000(200%)</td>
						<td>2020-06-28</td>
						<td>가전제품</td>
						<td>186,000,000</td>
						<td>미발급</td>
						<td><button type="button">발급하기</button></td>
					</tr>
				</tbody>
			</table>
		</center>
	</div>

</body>
</html>