<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업공정등록</title>
</head>
<body>
<script type="text/javascript">

function check() {
	if(!f.w_workno.value){
		alert("작업지시번호가 입력해주세요!")
		f.w_workno.focus();
	}
	
	if(!f.p_p1.value){
		alert("재료번호를 선택해주세요!")
		f.p_p1.focus();
	}
	
	if(!f.p_p2.value){
		alert("인쇄공정 선택해주세요!")
		f.p_p2.focus();
	}
	
	if(!f.p_p3.value){
		alert("합지공정 선택해주세요!")
		f.p_p3.focus();
	}
	
	if(!f.p_p4.value){
		alert("접합공정 선택해주세요!")
		f.w_workno.focus();
	}
	
	if(!f.w_workno.value){
		alert("포장공정 선택헤주세요!")
		f.w_workno.focus();
	}
	
	if(!f.w_workno.value){
		alert("최종공정일자 입력해주세요")
		f.w_workno.focus();
	}
	
	if(!f.w_workno.value){
		alert("최종공정시간 입력해주세요")
		f.w_workno.focus();
	}
	
	
	f.sumit();
	
}</script>



	<%@ include file="header.jsp"%>
	<form action="update.jsp" name="f" value="" style="border: 1" size="800">
		<table class="조회" style="">
			<h1 class="조회1" margin=200px>작업공정등록</h1>
			<tr>
				<td>작업지시번호</td>
				<th><input type="text" name="w_workno"/>예)20190001</th>
			</tr>

			<tr>
				<td>재료준비</td>
				<th><input type="radio" name="p_p1" value="Y" />완료
					<input type="radio" name="p_p1" value="N" />작업중</th>
			</tr>


			<tr>
				<td>인쇄공정</td>
				<th><input type="radio" name="p_p2" value="Y"  />완료
					<input type="radio" name="p_p2" value="N"  />작업중</th>
			</tr>


			<tr>
				<td>코딩공정</td>
				<th><input type="radio" name="p_p3" value=""  />완료
					<input type="radio" name="p_p3" value=""  />작업중</th>
			</tr>


			<tr>
				<td>합지공정</td>
				<th><input type="radio" name="p_p4" value=""  />완료
					<input type="radio" name="p_p4" value="" />작업중</th>
			</tr>


			<tr>
				<td>접합공정</td>
				<th><input type="radio" name="p_p5" value="" />완료
					<input type="radio" name="p_p5" value="" />작업중</th>
			</tr>

			<tr>
				<td>포장적재</td>
				<th><input type="radio" name="p_p6" value=""/>완료
					<input type="radio" name="p_p6" value=""  />작업중</th>
			</tr>

			<tr>
				<td>최종작업일자</td>
				<th><input type="text" name="w_lastdate" value=""  />예)20190101</th>
			</tr>

			<tr>
				<td>최정작업시간</td>
				<th><input type="text" name="w_lasttime" value=""  />예)1300</th>
			</tr>



			<tr>
				<th colspan="2"><input type="submit" value="공정등록" /> 
				<input type="submit" value="공정수정" onclick="check(); return false" /> 
				<input type="submit" value="다시쓰기"  onclick="rewrite()" /></th>
			</tr>
		</table>
	</form>
	<%@ include file="footer.jsp"  %>
</body>
</html>