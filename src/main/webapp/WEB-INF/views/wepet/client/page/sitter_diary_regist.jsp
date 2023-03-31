
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>

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

	<!-- include summernote css/js -->
	<script src="/resources/summernote/js/summernote-lite.js"></script>
	<script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
</head>

<body>
<div class="layout-wrapper layout-content-navbar">
  <!-- Menu -->
  <%@ include file="../inc/sneat/sneat_navbar_link2.jsp" %>
    <!-- / Menu -->
    <div class="layout-container"> <!-- Layout container -->
      <div class="layout-page"> <!-- Layout-page -->
        <div class="content-wrapper"> <!-- Content wrapper -->
          <div class="container-xxl flex-grow-1 container-p-y"> <!-- Content -->
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 일지 작성 </h4>
            <hr class="container-m-nx border-light mt-5">

<div class="col-xl">
  <div class="card mb-4">
    <div class="card-header d-flex justify-content-between align-items-center">
    </div>
    <div class="card-body">
      <form>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">제목</label>
          <input type="text" class="form-control" id="basic-default-fullname">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">구분</label>
							<div class="form-group row">
								<div class="col">
									<select class="form-control" name="category_idx">
										<option value="0">반려동물을 선택하세요</option>
										<option value="1">고양이</option>
										<option value="2">소형견</option>
										<option value="2">중형견</option>
										<option value="2">대형견</option>
									</select>
								</div>
							</div>
        </div>
							
							
        <div class="mb-3">
          <label class="form-label" for="basic-default-message">내용</label>
          <textarea id="basic-default-message" class="form-control" placeholder="내용을 입력해주세요"></textarea>
        </div>
        <button type="button" class="btn btn-primary" style="display:inline-block; text-align:right;">저장하기</button>
        <button type="button" class="btn btn-primary" id="bt_list">목록으로</button>
      </form>
    </div>
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
<script type="text/javascript">


$(function(){
	$("#basic-default-message").summernote({
		height:550
	});
	$("#bt_list").click(function() {
		location.href="/sitter/diary";
		
	});
	
});



</script>
</html>