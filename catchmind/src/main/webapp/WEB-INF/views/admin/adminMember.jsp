<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<style>
	  .outer {
		text-align: left;
		/* padding: 70px; */
	
		margin-left: 250px;
		margin-top: 50px;
		min-width: 1050px;
	}
	.tb{
		text-align: center;
	  
	 
	}
	
	#blackList{
	  display:none;
	}
	.mybtn {
	
		background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
		background-color:#79bbff;
		border-radius:5px;
		border:1px solid #337bc4;
		display:inline-block;
		cursor:pointer;
		color:#ffffff;
		font-family:Arial;
		font-size:14px;
		font-weight:bold;
		padding:5px 15px;
		text-decoration:none;
	
	}
	.mybtn:hover {
		background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
		background-color:#378de5;
	}
	.mybtn:active {
		position:relative;
		top:1px;
	}
	</style>
</head>
<body>
	<jsp:include page="../common/admin.jsp"/>

 	<div class="outer">
    <h2>회원관리</h2><br>
    <button class="mybtn" onclick="member();">회원</button>&nbsp;<button class="mybtn" onclick="blackList();">블랙리스트</button><br>
    <br>
    <!-- 회원리스트 -->
      <div id="member">
        <form action="" method="">
          <div class="k_btn">
            <input type="text" name="keyword" placeholder="키워드 입력"> <button type="button" class="mybtn">조회</button>
          </div>
          <br>
          회원 수 : <input type="text" style="border: unset;" value="20">
        </form>
        <br>
        
          <table class="tb" border="1">
            <tr>
              
              <th width="100px">회원번호</th>
              <th width="200px">아이디</th>
              <th width="50px">구분</th>
              <th width="100px">회원명</th>
              <th width="150px">연락처</th>
              <th width="150px">이메일</th>
              <th width="100px">포인트</th>
              <th width="150px">가입일</th>
              <th width="100px">변경</th>
            </tr>
            <tr>
          
              <td>1</td>
              <td>admin</td>
              <td>A</td>
              <td>관리자</td>
              <td>010-1234-1234</td>
              <td>admin@admin.ad</td>
              <td>4,500</td>
              <td>2020.05.17</td>
              <td>
                  <select>
                    <option>활동회원</option>
                    <option>블랙리스트</option>
                    <option>탈퇴회원</option>
                  </select>
              </td>
            </tr>
          </table>
      </div> 

      <!-- 블랙리스트 -->
      <div id="blackList"> 
        <form action="" method="">
          <div class="k_btn">
            <input type="text" name="keyword" placeholder="키워드 입력"> <button class="mybtn" type="button">조회</button>
          </div>
          <br>
          회원 수 : <input type="text" style="border: unset;" value="12">
          <br>
        </form>
        <br>
            <table class="tb" border="1">
              <thead>
                  <tr>
                      <th width="100px">회원번호</th>
                      <th width="200px">아이디</th> 
                      <th width="50px">구분</th>
                      <th width="430px">사유</th>
                      <th width="150px">제제일자</th>
                      <th width="120px">상태</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>1</td>
                      <td>user01</td>
                      <td>B</td>
                      <td>그냥그냥</td>
                      <td>2020-05-24</td>
                      <td>블랙리스트</td>
                  </tr>
                  
                
              </tbody>
      
          </table>    
      </div>    
    
    </div>
    <script>
      function blackList(){
        if($("#blackList").is(":visible")){
            $("#blackList").slideDown(0);
      }else if($("#member").is(":visible")){
                $("#member").slideUp(0);
                $("#blackList").slideDown(0);
        }
      }

      function member(){
        if($("#member").is(":visible")){
            $("#member").slideDown(0);
      }else if($("#blackList").is(":visible")){
                $("#blackList").slideUp(0);
                $("#member").slideDown(0);
        }
      }
   </script>
</body>
</html>