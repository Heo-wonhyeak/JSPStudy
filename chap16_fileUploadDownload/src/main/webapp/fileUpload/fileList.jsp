<%@page import="java.net.URLEncoder"%>
<%@page import="kr.co.ezen.myfile.MyfileDTO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.ezen.myfile.MyfileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>파일 업로드</title>
</head>
<body>
	<h2>DB에 등록된 파일 목록 보기</h2>
	<a href="fileUploadMain.jsp">파일 등록하기</a>
	<%
		MyfileDAO dao = new MyfileDAO();
		List<MyfileDTO> fileLists = dao.myFileList();
		dao.close();
	%>
	<table border="1" width ="100%">
		<tr>
			<th>No</th>
			<th>작성자</th>
			<th>제목</th>
			<th>카테고리</th>
			<th>원본파일</th>
			<th>저장파일</th>
			<th>날짜</th>
			<th>다운로드</th>
		</tr>
	<%
		for(MyfileDTO f : fileLists) {
	%>
		<tr align="center">
			<td><%= f.getIdx() %></td>
			<td><%= f.getName() %></td>
			<td><%= f.getTitle() %></td>
			<td><%= f.getCate() %></td>
			<td><%= f.getOfile() %></td>
			<td><%= f.getSfile() %></td>
			<td><%= f.getPostdate() %></td>
			<td><a href="download.jsp?oName=<%=URLEncoder.encode(f.getOfile(), "UTF-8") %>&sName=<%=URLEncoder.encode(f.getSfile(), "UTF-8") %>">다운로드</a></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>