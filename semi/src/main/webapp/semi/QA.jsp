<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QAOk.jsp" method="post">
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="" /></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" id="" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="contents" id="" cols="30" rows="10"></textarea></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="filename" id="" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송" />
				</td>
			</tr>
		</table>
	
	</form>
</body>
</html>