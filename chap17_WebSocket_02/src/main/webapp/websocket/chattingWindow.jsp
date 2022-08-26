<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	request.setCharacterEncoding("utf-8");
%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>웹소켓 채팅창</title>
  <style>
      #chatWindow {
          border: 1px solid black; width: 280px; height: 280px; overflow: scroll; padding: 5px;
      }
      #chatMessage {
          width: 240px; height: 30px;
      }   
      #sendBtn {
          height: 30px; position: relative; top: 2px; left: -2px;
      }         
      #closeBtn {
          margin-bottom: 3px; position: relative; top: 2px; left: -2px;
      }
      .myMsg {
          text-align: right; margin-bottom:2px;
      }      
      .otherMsg {
      	  text-align : letf; margin-bottom:2px;
      }
  </style>  
  
  <script type="text/javascript">
	  let webSocket = 
		  new WebSocket("<%=application.getInitParameter("CHARSERVER_ADDR") %>/ChatingServer")
	
	  
	  let chatWindow, chatMessage, chatId
	  // 채팅창이 열리면 대화창, 메시지 입력창, 대화명 표시란으로 사용할 DOM 객체 저장
      window.onload = function () {
          chatWindow = document.getElementById("chatWindow")
          chatMessage = document.getElementById("chatMessage")
          chatId = document.getElementById("chatId").value          
      }	  

      function sendMessage() {
          //대화창에 표시
          chatWindow.innerHTML += "<div class='myMsg'>"+chatMessage.value+"</div>"
          //서버로 전송
          webSocket.send(chatId+'|'+chatMessage.value)
          //메시지 입력창 내용 초기화
          chatMessage.value = ''
          //대화창 스크롤바는 항상 아래로 내려줌
          chatWindow.screenTop = chatWindow.scrollHeight
      }	  

     	
      /* 
      	웹소켓과 관련된 이벤트가 발생시 호출되는 함수들 정의
      	- 각 상황은 이벤트로 전달됨 => 리스너가 감지하여 이 메서드들을 호출해줄것임
      	- 호출시 인수로 이벤트 객체가 전달됨
      */
      
      //웹소켓 서버에 연결되었을 때 실행
      webSocket.onopen = function (event) {
          chatWindow.innerHTML += chatId +"님, 웹 소켓 서버에 연결되었습니다. <br>"
      }      
      
      webSocket.onmessage = function (event) {
    	  let message = event.data.split("|")		//대화명과 메세지 분리
    	  let sender = message[0]					//보낸사람의 대화명
    	  let contents = message[1]					//메시지 내용
    	  
    	  if(contents != "") {
    		  chatWindow.innerHTML += "<div class='otherMsg'>"+sender+":"+contents+"</div>"
    	  }  
    	  chatWindow.screenTop = chatWindow.scrollHeight
      }
	  
      //웹 소켓이 닫혔을때 실행
      webSocket.onclose = function (event) {
    	  chatWindow.innerHTML += "웹 소켓 서버에 종료되었습니다. <br>"
      }
      
      //에러 발생시 실행
      webSocket.onerror = function (event) {
    	  chatWindow.innerHTML += "채팅중 에러가 발생했습니다. <br>"
      }
      
	  //엔터키 입력처리
	  function enterKey() {
			if(window.event.keyCode == 13) {
				sendMessage()
			}
	  }  	
	  
	  function disconnect() {
		  webSocket.close()
	  }
  
  </script>
</head>
<body>		<!-- 대화창 UI -->
	대화명 : <input type="text" id="chatId" value="${param.chatId }" readonly />
	<button id="closeBtn" onclick="disconnect()">채팅 종료</button>
	<div id="chatWindow"></div>
    <div>
        <input type="text" id="chatMessage" onkeyup="enterKey()" />
        <button id="sendBtn" onclick="sendMessage()">전송</button>
    </div>	
</body>
</html>









