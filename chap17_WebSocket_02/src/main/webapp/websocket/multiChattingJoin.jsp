<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>채팅 참여 화면</title>
  <script type="text/javascript">
  	function chatWindowOpen() {		/* 채팅창을 팝업창으로 열어주는 함수 */
  		console.log("here")
		let id = document.getElementById("chatId");
  	
        if (id.value == "") {		/* 프로필명이 입력되지 않았다면 alert 띄움 */
            alert("프로필명을 입력 후 채팅창을 열어주세요!")
            id.focus()
            return
        } 
        
        window.open("chattingWindow.jsp?chatId=" + id.value, "","width=340, height=420")
        id.value = "" 		/* 새로운 프로필명 입력할수 있도록 기존내용 제거 */       
	}
  
  </script>
</head>
<body>
	<h2>웹소켓 채팅 - 채팅창 참여하기</h2>
	프로필명 : <input type="text" id="chatId" />				<!-- 대화명 입력 -->
	<button onclick="chatWindowOpen()">채팅 참여하기</button>	
</body>
</html>





















