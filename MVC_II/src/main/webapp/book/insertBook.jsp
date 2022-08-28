<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>책등록</title>
	<style type="text/css">
		section {
			display: inline-block;
			width : 80%;
			position: relative;
			left:12%;
			padding:30px;
		}
		* {
		 margin : 0 auto;
		}
	</style>
	<script type="text/javascript">
		function validateForm(form) {		//폼내용 검증
			if (form.bookName.value == "") {
				alert("도서명을 입력하세요.")
				form.bookName.focus()
				return false
			}  		
			if (form.author.value == "") {
				alert("저자를 입력하세요.")
				form.author.focus()
				return false
			}
	  		if (form.publisher.value == "") {
	  			alert("출판사를 입력하세요.")
	  			form.publisher.focus()
	  			return false
	  		}
		}
	</script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<%@ include file="../common/nav.jsp" %>
	<section>
		<h2 >책 등록</h2>
		<form action="../book/insertBook.do" name="insertFrm" method="post" onsubmit="return validateForm(this)">
			<table border="1" width="70%">
				<tr>
					<td width="15%">도서명</td>
					<td>
						<input type="text" name="bookName" style="width: 500px;"/>
					</td>
				</tr>
				<tr>
					<td width="15%">저자</td>
					<td>
						<input type="text" name="author" style="width: 500px;"/>
					</td>
				</tr>
				<tr>
					<td width="15%">출판사</td>
					<td>
						<input type="text" name="publisher" style="width: 500px;"/>
					</td>
				</tr>
				<tr>
					<td width="15%">가격</td>
					<td>
						<input type="text" name="price" style="width: 500px;"/>
					</td>
				</tr>
				<tr>
					<td width="15%">출판일</td>
					<td>
						<input type="text" name="publication_date" style="width: 500px;"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit">작성 완료</button>
						<button type="reset">다시 입력</button>
						<button type="button" onclick="location.href='../book/bookList.do'">목록 보기</button>
					</td>
				</tr>
			</table>
		
		</form>

	</section>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>