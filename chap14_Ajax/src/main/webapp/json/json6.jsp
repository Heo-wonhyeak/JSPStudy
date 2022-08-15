<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<title>JSON 테스트</title>
	<!-- core 로 contextpath 가져옴 -->
	<c:set var="contextPath" value="${pageContext.request.servletContext.contextPath }"/>
	<script type="text/javascript">
		$(function(){
			$("#checkJson").click(function(){
				$.ajax({
					type: "post"
					,url: "${contextPath }/json2"
					,dataType : "text"
					,success: function(data,textStatus) {
						/* 서버에서 전송한 JSON 데이터를 파싱함 */
						let jsonInfo = JSON.parse(data)
						
						let output = "회원 정보<br/>"
						output += "================<br/>"
						for(let i in jsonInfo.members) {
							output += "이름:" + jsonInfo.members[i].name
							output += " 나이:" + jsonInfo.members[i].age
							output += " 성별:" + jsonInfo.members[i].gender
							output += " 별명:" + jsonInfo.members[i].nickname+"<br/>"
						}
						/* 회원 이름 출력 */
						$("#output").html(output)
					}
					,error : function(data,textStatus) {
						alert("에러가 발생했습니다.")
					}
					,complete: function(data,textStatus) {
						
					}
				})
			})
		})
	</script>
</head>
<body>
	<a id="checkJson" style="cursor : pointer;">전송</a><br/><br/>
	<div id="output"></div>
</body>
</html>