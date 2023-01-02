<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  pageEncoding="UTF-8"%>
<html>
<head>
	<title>회원 관리 목록</title>
</head>
<body>
<h1>
	회원 관리 목록  
</h1>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>성별</th>
			<th>유선전화번호1</th>
			<th>유선전화번호2</th>
			<th>유선전화번호3</th>
			<th>휴대전화번호1</th>
			<th>휴대전화번호2</th>
			<th>휴대전화번호3</th>
			<th>sms메시지 수신여부</th>
			<th>이메일1</th>
			<th>이메일2</th>
			<th>이메일수신여부</th>
			<th>우편번호</th>
			<th>도로명주소</th>
			<th>지번주소</th>
			<th>나머지주소</th>
			<th>생년월일 년</th>
			<th>생년월일 월</th>
			<th>생년월일 일</th>
			<th>생년월일 양음력여부</th>
			<th>회원가입일자</th>
			<th>회원탈퇴유무</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${list}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td><a href="<c:url value='/member/view.do?member_id=${item.member_id}'/>">${item.member_id}</a></td>
				<td>${item.member_pw}</td>
				<td>${item.member_name}</td>
				<td>${item.member_gender}</td>
				<td>${item.tel1}</td>
				<td>${item.tel2}</td>
				<td>${item.tel3}</td>
				<td>${item.hp1}</td>
				<td>${item.hp2}</td>
				<td>${item.hp3}</td>
				<td>${item.smssts_yn}</td>
				<td>${item.email1}</td>
				<td>${item.email2}</td>
				<td>${item.emailsts_yn}</td>
				<td>${item.zipcode}</td>
				<td>${item.roadAddress}</td>
				<td>${item.jibunAddress}</td>
				<td>${item.namujiAddress}</td>
				<td>${item.member_birth_y}</td>
				<td>${item.member_birth_m}</td>
				<td>${item.member_birth_d}</td>
				<td>${item.member_birth_gn}</td>
				<td>${item.joindate}</td>
				<td>${item.del_yn}</td>
				
			</tr>
		</c:forEach>
	</tbody>
</table>


</body>
</html>
