<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVo" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
	<link rel="stylesheet" type="text/css" href="../css/blog.css">

	<title>2301 구호정 블로그</title>

  </head>
  
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-light bg-pink fixed-top" data-toggle="sticky-onscroll" style="background-color: #FEB8C5;">
  <a class="navbar-brand" href="blog.jsp">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#wannaone">WannaOne <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#mxm">MXM</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#dog">Kkami</a>
      </li>
    </ul>
    
    <%
    	if(session.getAttribute("user")==null) {
    %>
    <form class="form-inline my-2 my-lg-0" id="loginForm">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" id="id" 
      
      required>
      <input class="form-control mr-sm-2" type="password" placeholder="PWD" id="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
      <!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Join</button>
      
    </form>
    
    <%
    	}else {
    		out.print(((UserVo)session.getAttribute("user")).getName());
    		%>
    		<form action="/WebClass/bloglogout" method="post">
    		<button type="submit" class="dropdown-item">Sign Out</button>
    		</form>
    		<%
    		
    		
    	}
    %>
  </div>
</nav>
	<p id="content">Welcome to<br><br><br>
	my blog!<br><br><br></p>
	<br><br><br>
	<a id="wannaone">
	</a>
	<h1 class="display-4">Wannaone</h1>
	<img src="../image/1.jpg" id="one" alt="">
	<p id="text1">
	워너원(WannaOne)은 대한민국의 11인조 보이그룹이다. 엠넷의 서바이벌 프로그램 프로듀스 101 시즌2에 출연한 연습생들 중 상위 11명을 선발해 결성되었으며, 2017년 8월 7일 데뷔를 시작으로 1년 5개월간 프로젝트 그룹으로서 활동한다. 

그룹명 WannaOne은 프로그램의 제목 101(원오원)의 발음에서 따왔으며, 로고를 자세히 보면 선명한 세로선이 모두 11개가 있다. 'wannaone'은 '모두가 하나가 된다'라는 의미라고 한다.</p>
	
	<table class="table table-striped" style="width:800px">
  <thead>
    <tr>
      <th>이름</th>
      <th>생년월일</th>
      <th>포지션</th>
      <th>소속사</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">윤지성</th>
      <td>1991.03.08</td>
      <td>리더, 서브보컬</td>
      <td>MMO엔터테인먼트</td>
    </tr>
    <tr>
      <th scope="row">하성운</th>
      <td>1994.03.22</td>
      <td>메인보컬</td>
      <td>스타크루이엔티</td>
    </tr>
    <tr>
      <th scope="row">황민현</th>
      <td>1995.08.09</td>
      <td>리드보컬</td>
      <td>플레디스엔터테인먼트</td>
    </tr>
    <tr>
      <th scope="row">옹성우</th>
      <td>1995.08.25</td>
      <td>리드보컬, 리드댄서</td>
      <td>판타지오</td>
    </tr>
    <tr>
      <th scope="row">김재환</th>
      <td>1996.05.27</td>
      <td>메인보컬</td>
      <td>CJ E&M</td>
    </tr>
    <tr>
      <th scope="row">강다니엘</th>
      <td>1996.12.10</td>
      <td>센터, 리드래퍼, 메인댄서</td>
      <td>MMO엔터테인먼트</td>
    </tr>
    <tr>
      <th scope="row">박지훈</th>
      <td>1999.05.29</td>
      <td>서브보컬, 리드댄서</td>
      <td>마루기획</td>
    </tr>
    <tr>
      <th scope="row">박우진</th>
      <td>1999.11.02</td>
      <td>메인래퍼, 메인댄서</td>
      <td>브랜뉴뮤직</td>
    </tr>
    <tr>
      <th scope="row">배진영</th>
      <td>2000.05.10</td>
      <td>서브보컬</td>
      <td>C9 엔터테인먼트</td>
    </tr>
    <tr>
      <th scope="row">이대휘</th>
      <td>2001.01.29</td>
      <td>서브보컬</td>
      <td>브랜뉴뮤직</td>
    </tr>
    <tr>
      <th scope="row">라이관린</th>
      <td>2001.09.23</td>
      <td>서브래퍼</td>
      <td>큐브엔터테인먼트</td>
    </tr>
    
  </tbody>
</table>
<br><br><br>
	
<a id="mxm">
	</a>
	<h1 class="display-4">MXM</h1>
	<img src="../image/2.jpg" id="two" alt="">
	<br><br>
<p id="text2">MXM은 브랜뉴보이즈의 유닛으로 Mnet ‘프로듀스 101 시즌2’를 통해 큰 사랑을 받았던 임영민과 김동현의 유닛그룹이다. 첫 미니앨범부터 4만장이 넘는 예약 판매량을 기록하는가 하면 이날 쇼케이스 역시 30초 만에 매진되는 등 남다른 인기를 자랑하고 있다.
</p>
<p>1st Album</p>
	<img src="../image/3.jpg" id="three" alt="">
	<pre><br><br>
	MXM (BRANDNEW BOYS) [GOOD DAY]
      	브랜뉴뮤직 임영민 X 김동현, 유닛 데뷔.
      	브랜뉴보이즈만이 선보일 수 있는 자작곡 선공개.</pre>
      	<br><br><br><br><br><br><br><br><br>
    <p>2nd Album</p>
	<img src="../image/4.jpg" id="four" alt="">
	<pre><br><br>
	그 무엇과도 구분되는(UNMIX) MXM만의 음악과 비전. 
        MXM (BRANDNEW BOYS) 1ST MINI ALBUM [UNMIX]
        <br><br><br><br><br><br><br><br><br><br><br>
</pre>
<br><br><br>

<a id="dog"> </a>
<h1 class="display-4">까미</h1>
	<hr>
<ul>
<li>나이: 10살</li>
<li>종류: 요크셔테리어</li>
<li>생일: 7월 31일</li>
<li>좋아하는 것: 간식, 산책하기, 인형가지고 놀기</li>
<li>싫어하는 것: 어두운 곳, 시끄러운 곳, 큰 강아지</li>
</ul>
<br><br>
<h3>2015년</h3><br>
<img src="../image/20151.JPG" id="dog1" alt="">
<img src="../image/20152.JPG" id="dog2" alt="">
<img src="../image/20153.JPG" id="dog3" alt="">
<img src="../image/20155.JPG" id="dog5" alt="">
<br>
<h3>2016년</h3>
<img src="../image/20161.JPG" id="dog6" alt="">
<img src="../image/20162.JPG" id="dog7" alt="">

	

<!-- Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel2">회원가입</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <form id="registerForm">
      <div class="modal-body">
		학년<br>
		<input type="radio" name="sports" value="1" checked>1학년<br>
		<input type="radio" name="sports" value="2">2학년<br>
		<input type="radio" name="sports" value="3">3학년<br>
	반<br>
	<select name="list" required>
	<option value="">선택</option>
	<option value="1">1반</option>
	<option value="2">2반</option>
	<option value="3">3반</option>
	<option value="4">4반</option>
	<option value="5">5반</option>
	<option value="6">6반</option>
	</select><br>

      <label for="num" class="form-control-label">번호</label>
      <input class="form-control mr-sm-2" type="text" id="num" required>
      <label for="name" class="form-control-label">이름</label>
      <input class="form-control mr-sm-2" type="text" id="name" required>
      
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">완료</button>
      </div>
      
    </div>
</form>
  </div>
</div>
</div>

<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script src="../js/blog.js"></script>
  
</body>
</html>