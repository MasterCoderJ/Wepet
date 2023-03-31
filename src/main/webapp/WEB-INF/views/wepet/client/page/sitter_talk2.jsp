<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>메인페이지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<!-- Header Start -->
	<%-- <%@ include file="../inc/gardener/inc/header_link.jsp"%> --%>
	<!-- Header End -->
	
	<!--  sidebar-inc-->
	<%@ include file="../inc/sneat/sneat_header_link.jsp"%>
	<!--  sidebar-inc-->
	
	<!-- Topbar Start 맨 윗칸 전화모양-->
	<%@ include file="../inc/gardener/inc/topbar_link.jsp"%>
	<!-- Topbar End -->
	
	<!-- Navbar Start 카테고리부분-->
	<%@ include file="../inc/gardener/inc/navbar_link.jsp"%>
	<!-- Navbar End -->
	
	<!-- 달력을 위한 inc-->
	<%@ include file="../inc/sam/header_link2.jsp"%>
	<!-- 달력을 위한 inc-->
	<link rel="stylesheet" type="text/css" href="resources/css/chat.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
<div class="layout-wrapper layout-content-navbar">
	<!-- Menu -->
	<%@ include file="../inc/sneat/sneat_navbar_link2.jsp"%>
	<!-- / Menu -->
	<div class="layout-container"> <!-- Layout container -->
		<div class="layout-page"> <!-- Layout-page -->
			<div class="content-wrapper"> <!-- Content wrapper -->
				<div class="container-xxl flex-grow-1 container-p-y"> <!-- Content -->
				<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 톡 Talk 톡 </h4>
				<hr class="container-m-nx border-light mt-5">
				
					<div class="row">
						<div class="col-md-3">
							<aside class="aside" id="chat_leftSide">

								<div id="chat_list_search" style="background-color:black; height:50px; border:2px solid black;">
								<h5 type="hidden">채팅방 검색 영역입니다</h5>
								</div>
								<div id="chat_list" style="height:650px; border:2px solid black;">
								<h5 type="hidden">채팅방 목록 영역입니다</h5>
<!-- 채팅방 목록 -->
<div class="col-5 px-0">
  <div class="bg-white">
    <div class="bg-gray px-4 py-2 bg-light">
      <p class="h5 mb-0 py-1">User List</p>
    </div>
    <div class="messages-box">
      <div class="list-group rounded-0" id="userList">
        <%-- 채팅방 동적 생성 --%>
      </div>
    </div>
  </div>
</div>
<!-- 채팅방 목록 -->
								</div>
							
							</aside>
						</div>
						<div class="col-md-7" style="height:700px; border:2px solid black;">
							<div class="content" id="chat_content" style="background-color:lightgrey; height:600px;">
							<h5  type="hidden">채팅 영역입니다</h5>
							</div>
							<div class="chat_write_area" style="background-color:white; height:80px; border:2px solid black;">
								<div class="row">
									<div class="col-md-1">
							
<!-- 채팅창 -->
<div class="col-7 px-0">

  <div class="px-4 pt-5 chat-box bg-white" id="message">
    <%-- 메세지 동적 생성 --%>
  </div>

  <!-- 메세지 입력 창 -->
  <div class="input-group">
    <input type="text" id="chat" placeholder="메세지를 입력하세요." class="form-control rounded-0 border-0 py-4 bg-light">
    <div class="input-group-append">
      <button type="button" class="btn btn-link bg-white" id="sendBtn" onclick="send('message');">
        <i class="fa fa-paper-plane"></i>
      </button>
    </div>
  </div>
  <!-- 메세지 입력 창 -->
</div>
</div>
<!-- 채팅창 -->
</div>
<!-- 채팅 컨테이너 -->
										
<label id="imageUploadButton" class="btn_photo" for="imageUploader">
<button type="button" class="wrap_icon" style="text-align: center;">
<i class='bx bx-image-add'></i>
</button>
</label>
<form id="imageUploader" method="post" enctype="multipart/form-data" style="height: 0px; position: fixed;">
<input name="files[]" type="file" accept="image/*" multiple="" title="파일선택" style="visibility: hidden;">
</form>
										
									</div>
									<div class="col-md-10" id="chat_input_area">
<textarea title="메시지 입력창" class="chat_input" maxlength="2000" placeholder="메시지를 입력하세요." style="width:600px;"></textarea>
									</div>
									<div class="col-md-1">
<button class="btn_submit " type="submit" aria-label="메시지 전송">
<i class='bx bx-send'></i>
</button>
									</div>
								
								</div>
							
							
							</div>
						</div>
						<div class="col-md-2" style="border:2px solid black;">
							<aside class="aside" id="chat_rightSide">
							<h5>업체정보 영역입니다</h5>
							<div class="row1" style="height:300px;">
								<div style="text-align:center;">
								<button>
									<img alt="" src="/resources/sneat/assets/vendor/fonts/boxicons/png/bxs-group.png"  style="width:50px; height:50px; text-align:center;">							
								</button>
								</div>
							</div>
							<div class="row2" style="height:300px;">
								<div style="text-align:center;">
								<button>
									<img alt="" src="/resources/sneat/assets/vendor/fonts/boxicons/png/bxs-buildings.png"  style="width:50px; height:50px;">
								</button>
								</div>
							</div>

							</aside>
						</div>
					</div>

				
				</div> <!-- Content -->
			</div> <!-- Content wrapper -->
		</div> <!-- Layout-page -->
	</div> <!-- Layout container -->
</div><!-- layout-wrapper layout-content-navbar -->

<div class="page-flex">
	<div class="container justify-content-center">
	<!-- Copyright Start -->
	<%@ include file="../inc/gardener/inc/copyright_link.jsp"%>
	<!-- Copyright End -->
	</div>
</div>
	
	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</body>
</html>