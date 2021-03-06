<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <style>

.content{ width:800px; margin:auto;}
.innerOuter{
    width:800px;
    margin:auto;
    background:white; }
        #boardList{text-align: center;}
        #boardList>tbody>tr:hover{cursor:pointer;}

        #pagingArea{width:fit-content;margin:auto;}
       
        #searchForm{
            width:80%;
            margin:auto;
        }
        #searchForm>*{
            float:left;
            margin:5px;
        }
        .select{width:20%;}
        .text{width:53%;}
        .searchBtn{Width:20%;}


        .pagination a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        }

        .pagination a.active {
        background-color: #4CAF50;
        color: white;
        border-radius: 5px;
        }

        .pagination a:hover:not(.active) {
        background-color: #ddd;
        border-radius: 5px;
        }

        #boardList{
        margin-top: 50px;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp" />
    <div class="content">
        <br><br><br>
        <div class="innerOuter">
            <h3>메세지함</h3><br>
            <c:if test="${ loginUser.userType eq 3 }" >
            	<button><a href="sellerMessageRest.me?counseling=${ loginUser.userNo }&currentPage=1">프로젝트개설자 메세지함</a></button><br><br>
            </c:if>
            <table id="questionList" class="table table-hover" align="center">
                <thead>
                  <tr>
                  	<th>글번호</th>
                    <th>제목</th>
                    <th>보낸사람</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tbody>
	                <c:forEach items="${ list }" var="q">
	                    <tr>
	                    	<td>${ q.questionNo }</td>
							<td>${ q.questionTitle }</td>
							<td>${ q.userId }</td>
							<td>${ q.questionDate }</td>
	                    </tr>
                    </c:forEach>
                 </tbody>
            </table>
            <br>
            <script>
             	$(function(){
             		$("#questionList tbody tr").click(function(){
             			location.href = "messageView2.me?qno=" + $(this).children().eq(0).text();
             			
             		});
             	});
             </script>
            
             <div id="pagingArea">
		        <ul class="pagination"  style="width:300px; height:70px;">
		        	
		        	 <c:choose>
		        		<c:when test="${ pi.currentPage eq 1 }">
		             		<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>     
		             	</c:when>
		             	<c:otherwise>
		            		<li class="page-item"><a class="page-link" href="MessageRest.me?userNo=${ loginUser.userNo }&currentPage=${ pi.currentPage-1 }">Previous</a></li>
		            	</c:otherwise>
		            </c:choose>
		            
		            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
		            	<c:choose>
		            		<c:when test="${ p eq pi.currentPage }">
		             			<li class="page-item disabled"><a class="page-link" href="#">${ p }</a></li>
		             		</c:when>
		             		<c:otherwise>
		             			<li class="page-item"><a class="page-link" href="MessageRest.me?userNo=${ loginUser.userNo }&currentPage=${ p }">${ p }</a></li>
		            		</c:otherwise>
		            	</c:choose>
		            </c:forEach>
		            
		            <c:choose>
		            	<c:when test="${ pi.currentPage eq pi.maxPage }">
		             	<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
		             </c:when>
		             <c:otherwise>
		             	<li class="page-item"><a class="page-link" href="sellerMessageRest.me?counseling=${ loginUser.userNo }&currentPage=${ pi.currentPage+1 }">Next</a></li>
		            	</c:otherwise>
		            </c:choose>
		        </ul>
		    </div>
           
            <br clear="both"><br><br>

           
            <br><br>
        </div>
        <br><br>
    </div>
</body>
</html>