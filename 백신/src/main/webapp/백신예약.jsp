<%@page import="DBPKG.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
   
    String sql =" select max(RESVNO) from TBL_VACCRESV_202108 " ;                                                  
    
    Connection conn = DBConnection.getConnection();
    PreparedStatement pr = conn.prepareStatement(sql);
    ResultSet rs = pr.executeQuery();
    
    rs.next();
	int num = rs.getInt(1)+1;
        
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript">
	function checkVal(){
		if(!document.vc.rNum.value){
			alert("예약번호가 입력되지 않았습니다.");
			vc.rNum.focus();
			return false;
		}else if(!document.vc.jNum.value){
			alert("주민번호가 입력되지 않았습니다.");
			vc.jNum.focus();
			return false;
		}
		else if(!document.vc.vcode.value){
			alert("백신코드가 입력되지 않았습니다."); 
			vc.vcode.focus();
			return false;
		}
		else if(!document.vc.hcode.value){
			alert("병원코드가 입력되지 않았습니다.");
			vc.hcode.focus();
			return false;
		}
		else if(!document.vc.rDate.value){
			alert("예약날짜가 입력되지 않았습니다.");
			vc.rDate.focus();
			return false;
		}
		else if(!document.vc.rTime.value){
			alert("예약시간이 입력되지 않았습니다.");
			vc.rTime.focus();
			return false;
		}
		return true;
	}
	
</script>
</head>
<body>
	<header>
	  <jsp:include page="layout/header.jsp"></jsp:include>
 </header>

 <nav>
   	 <jsp:include page="layout/nav.jsp"></jsp:include>
 </nav>
	<section>	<div class="section">
		<div class="title">백신예약</div>
		<div>
			<form name="vc" method="post" action="백신예약p.jsp" onsubmit="return checkVal()">
			<table class="table_list">
				<tr>
					<th>예약번호</th>
					<td><input type="text" name="rNum" readonly="readonly" value="<%=num%>"> 예)20210011</td>
				</tr>
				<tr>
					<th>주민번호</th>
					<td><input type="text" name="jNum"> 예)790101-1111111</td>
				</tr>
				<tr>
					<th>백신코드</th>
					<td><input type="text" name="vcode">
					 예)V001, V002, V003</td>
				</tr>
				<tr>
					<th>병원코드</th>
					<td><input type="text" name="hcode">
					 예)H001, H002, H003, H004</td>
				</tr>
				<tr>
					<th>예약날짜</th>
					<td><input type="text" name="rDate"> 예)20210101</td>
				</tr>
				<tr>
					<th>예약시간</th>
					<td><input type="text" name="rTime"> 예)0930, 1130</td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" value="등록">
						<input type="button" value="취소">
					</th>
				</tr>
			</table>
			</form>
		</div>
	</div></section>
 <footer>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</footer>	
</body>
</html>