<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>쿠키를 이용한 팝업 관리</title>
	<style type="text/css">
		div#popup{
			position : absolute;
			top : 100px;
			left : 50px;
			color : yellow;
			width : 270px;
			height : 100px;
			background-color : gray;
		}
		div#popup>div {
			position : relative;
			background-color : #ffffff;
			top : 0px;
			border : 1px solid gray;
			padding : 10px;
			color : black;
		}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		let popupMode = "ON";
	
		$(function() {
			//쿠키가 있는지 최초 확인
			let cookieName = getCookie("popupCloseCookie");
			//만약에 쿠키가 있으면 로직 처리
			if (cookieName) {
				popupMode = "OFF";	//OFF셋팅 
				$('#popup').hide();	 //팝업 숨김처리
			}
			//화면에 뿌릴 문구 10개 처리 
			let firstMent = "";
			for (var i=0; i<10; i++) {
				firstMent += "현재 팝업창은 " + popupMode+ "상태입니다.<br/>";
			}
			$("#statusDiv").html(firstMent);
			
			//닫기 버튼 클릭 이벤트
			$('#closeBtn').click(function() {	/* 닫기 버튼을 누르면 */
				//체크박스 값 가져오기
				let isChecked = $('#inactiveToday').is(':checked');
				if (isChecked == undefined) {
					isChecked = 0;
				}
				//체크박스가 체크가 되었을때
				if (isChecked) {
					//쿠키 셋팅하고 
					setCookie('popupCloseCookie', isChecked, 1);
					//팝업 지우고 
					$('#popup').hide();
					//모드는 OFF
					popupMode = "OFF";
					//페이지 새로고침 
					location.reload();
					
				} 
				
				if (!isChecked){
					//체크박스가 체크가 안되었을때는 그냥 팝업만 숨김처리
					$('#popup').hide();	
				}
				
			});
			
			//쿠키저장함수 
			function setCookie(c_name, value, exdays){
			   var exdate = new Date();
			   exdate.setDate(exdate.getDate() + exdays);
			   var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
			   document.cookie = c_name + "=" + c_value;
			}
			//쿠키가져오는 함수 
			function getCookie(c_name) {
			   var i,x,y,ARRcookies=document.cookie.split(";");
			   for (i=0;i<ARRcookies.length;i++) {
			     x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
			     y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
			     x=x.replace(/^\s+|\s+$/g,"");
			     if (x==c_name){
			       return unescape(y);
			     }
			   }
			}
			
		});
	</script>
</head>
<body>
	<h2>팝업 메인 페이지</h2>
	
	<div id="statusDiv"></div>
	
		<div id="popup">
			<h2 align = "center">공지사항 팝업입니다.</h2>
			<div align = "right">
				<form action="#" name="popFrm">
					<input type="checkbox" id="inactiveToday" value="1" />하루동안 열지 않기
					<input type="button" id="closeBtn" value="닫기"/>
				</form>
			</div>
		</div>
	
</body>
</html>