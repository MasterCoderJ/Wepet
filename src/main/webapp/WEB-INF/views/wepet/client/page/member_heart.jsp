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

</head>

<body>
<div class="layout-wrapper layout-content-navbar">
	<!-- Menu -->
	<%@ include file="../inc/sneat/sneat_navbar_link3.jsp"%>
	<!-- / Menu -->
	<div class="layout-container"> <!-- Layout container -->
		<div class="layout-page"> <!-- Layout-page -->
			<div class="content-wrapper"> <!-- Content wrapper -->
				<div class="container-xxl flex-grow-1 container-p-y"> <!-- Content -->
				<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 찜콩 목록 </h4>
<div class="divider">
  <div class="divider-text">내가 찜한 펫시터 목록</div>
</div>

<div class="row mb-5 mt-5" style="width:100%; height:100%;">
  
  <div class="col-md-6 col-lg-4 mb-3" style="width:33%; height:30%;">
    <div class="card h-100">
      <img class="card-img-top" src="../resources/sneat/assets/img/petsitterimg/090000.jpg" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">조용민 훈련사</h5>
        <p class="card-text">
          실전 같은 훈련으로 조국의 방패로 거듭나자
        </p>
        <a href="/sitterlist" class="btn btn-outline-primary">예약하기</a>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-4 mb-3" style="width:33%; height:30%;">
    <div class="card h-100">
      <img class="card-img-top" src="../resources/sneat/assets/img/petsitterimg/090001.jpg" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">함진희 지도사</h5>
        <p class="card-text">
          가족 같은 반려동물이 있으십니까? 전 세계 반려동물들은 제 가족입니다. 당신도 제 가족이군요.
        </p>
        <a href="/sitterlist" class="btn btn-outline-primary">예약하기</a>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-4 mb-3" style="width:33%; height:30%;">
    <div class="card h-100">
      <img class="card-img-top" src="../resources/sneat/assets/img/petsitterimg/090002.jpg" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">최형선 애견미용사</h5>
        <p class="card-text">
          스타일리시한 반려동물을 원하신다면 애견미용실로, 유행을 선도하고 싶다면 최형선에게로!
        </p>
        <a href="/sitterlist" class="btn btn-outline-primary">예약하기</a>
      </div>
    </div>
  </div>

</div>


                    </div> <!-- / Content -->
                </div> <!-- Content wrapper -->
            </div> <!-- / Layout page -->
    </div> <!-- Layout container -->
</div> <!-- layout-wrapper layout-content-navbar -->

<div class="page-flex">
    <div class="container justify-content-center">
        <!-- Copyright Start -->
        <%@ include file="../inc/gardener/inc/copyright_link.jsp" %>
        <!-- Copyright End -->
    </div>
</div>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</body>
</html>