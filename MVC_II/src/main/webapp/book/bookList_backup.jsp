<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>책리스트</title>
	<style type="text/css">
		section {
			display: inline-block;
			width : 80%;
			position :relative;
			left:10%;
		}
		* {
		 margin : 0 auto;
		}
		#section {
			padding : 30px;
		}
	</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<%@ include file="../common/nav.jsp" %>
	<section >
		<div id="section">		
			<form action="#" method="get">
			<!-- 검색 -->
			<table border="1" width="90%">
				<tr>
					<td align="center">
						<select name="searchField">
							<option value="bookName">도서명</option>
							<option value="author">저자</option>
							<option value="publisher">출판사</option>
						</select>
						<input type="text" name="searchWord" />
						<input type="submit" value="검색하기" />
					</td>
				</tr>
			</table>	
			
			<!-- 게시물 목록 테이블 -->
			<table border="1" width="90%">
				<!-- 컬럼이름 -->
				<tr style="background-color: #F8E0F7;">
					<th width="5%">도서코드</th>
					<th width="*">도서명</th>
					<th width="25%">저자</th>
					<th width="10%">출판사</th>
					<th width="10%">가격</th>
					<th width="20%">출판일</th>
				</tr>	
				<c:choose>
					<c:when test="${ empty bookList }">	<!-- 게시물이 없을 때 -->
						<tr>
							<td colspan="6" align="center">
								등록된 게시물이 없습니다!
							</td>
						</tr>
					</c:when>
					<c:otherwise>							<!-- 게시물이 있을 때 -->
						<c:forEach items="${bookList }" var="row" varStatus="loop">
							<tr align="center">
								<td>${row.bookCode }</td>
								<td>${row.bookName }</td>
								<td>${row.author }</td>	
								<td>${row.publisher }</td>      
								<td>${row.price }</td> 
								<td>${row.publication_date }</td> 			 
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>		
			</table>

			<table border="1" width="90%">
				<tr align="right">
					<td width="100">
						<button type="button" onclick="location.href='../book/insertBook.do';">도서 정보 입력</button>
					</td>				
				</tr>
			</table>
		</form>
	</div>

	</section>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>