<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���</title>
</head>
<body>
	<h2>ȸ�� ���</h2>
	<hr>
	<table border="1">
	<tr>
	<th>��ȣ</th><th>�̸�</th><th>ȸ��</th><th>�̸���</th>
	</tr>
	<c:forEach var="m" varStatus="i" items="${memberlist}">
	<tr>
		<td>${m.id}</td><td>${m.username}</td>
		<td>${m.company}</td><td>${m.email}</td>
	</tr>
	</c:forEach>
	</table>
	<hr>
	<h2>ȸ�� �߰�</h2>
	<hr>
	<from method="post" action="/JavaServer2024/mcontroller?action=insert">
	<label>username</label> <input type="text" name="uesrname"><br>
	<label>����</label> <input type="text" name="company"><br>
	<label>����</label> <input type"text" name="birthday"><br>
	<label>�̸���</label> <input type="text" name="email"><br>
	<button type="submit">���</button>
	</from>
</body>
</html>