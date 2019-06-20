<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<h1>스터디 나라~</h1>
<h1>수정된 스터디 나라~</h1>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">StudyNara</a>
    </div>
    <ul class="nav navbar-nav">
      <li>
      	<div class="dropdown">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">영어
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a href="#">토익</a></li>
		      <li><a href="#">토스</a></li>
		      <li><a href="#">오픽</a></li>
		    </ul>
  		</div>
  	  </li>
      <li><div class="dropdown">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">일본어
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a href="#">JLPT</a></li>
		      <li><a href="#">JPT</a></li>
		      <li><a href="#">SJPT</a></li>
		    </ul>
  		</div></li>
      <li>
      	<div class="dropdown">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">중국어
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		    	<li><a href="#">HSK</a></li>
		      <li><a href="#">BCT</a></li>
		      <li><a href="#">CPT</a></li>
		      <li><a href="#">FELX</a></li>
		      
		    </ul>
  		</div>

	  </li>
      	<li>
			<div class="dropdown">
			    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">취업
			    <span class="caret"></span></button>
			    <ul class="dropdown-menu">
			      <li><a href="#">자소서</a></li>
			      <li><a href="#">인적성</a></li>
			      <li><a href="#">면접</a></li>    
			    </ul>
  			</div>
		</li>
      <li>
      	<div class="dropdown">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">코딩
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a href="#">알고리즘</a></li>
		      <li><a href="#">공모전</a></li>   
		    </ul>
  		</div>
      </li>
      <li>
      	<div class="dropdown">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">기타
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a href="#">취미</a></li>
		      <li><a href="#">자율</a></li>   
		    </ul>
  		</div>
      </li>
    </ul>
  </div>
</nav>
<table >
   <tr>
     <td>
        <select name="category1">
           <option value="">카테고리1</option>
           <option value="명어"> 영어 </option>
           <option value="일본어"> 일본어</option>
           <option value="중국어"> 중국어 </option>
           <option value="취업"> 취업 </option>
           <option value="코딩"> 코딩 </option>
           <option value="기타"> 기타 </option>
        </select>
        
        <select name="category2">
           <option value="">카테고리2</option>
           <option value="">버젼관리가 되었으면 좋겟어</option>
           <option value="">버젼관리가 되었으면 좋겟어2</option>
           
        </select>
        <select name="location1">
           <option value="서울">지역</option>
           <option value="서울"> 서울 </option>
           <option value="경기"> 경기</option>
           <option value="인천"> 인천 </option>
        </select>
        <select name="location2">
           <option value="종로구"> 종로구 </option>
           <option value="중구"> 중구</option>
           <option value="용산구"> 용산구 </option>
           <option value="성동구"> 광진구 </option>
        </select>
        <input type="text" name="searchKeyword">
        <input  type="submit" value="검색"/>
     </td>
   </tr>
</table>
<c:if test="${empty login}">
 	<li> <a href="${pageContext.request.contextPath}/login.do">로그인</a>
</c:if>

 <c:if test="${!empty login}">
	<li> <a href="${pageContext.request.contextPath}/hello.do">hello.do</a>
	<li> <a href="${pageContext.request.contextPath}/report.do">이미지등록</a>
	
	<li> <a href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
	
	<li> <a href="${pageContext.request.contextPath}/user/add.do">User 등록</a> </li>
	<li> <a href="${pageContext.request.contextPath}/user/list.do">User 목록</a> </li>
</c:if>
<div class="container">
  <h3>Basic Navbar Example</h3>
  <p>A navigation bar is a navigation header that is placed at the top of the page.</p>
</div>
</body>
</html>