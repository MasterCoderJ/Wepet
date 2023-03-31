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
	<%@ include file="../inc/sneat/sneat_navbar_link2.jsp"%>
	<!-- / Menu -->
	<div class="layout-container"> <!-- Layout container -->
		<div class="layout-page"> <!-- Layout-page -->
			<div class="content-wrapper"> <!-- Content wrapper -->
				<div class="container-xxl flex-grow-1 container-p-y"> <!-- Content -->
				<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 찜콩 목록 </h4>
<div class="divider">
  <div class="divider-text">나를 찜한 고객 목록</div>
</div>

<div class="row mb-5 mt-5" style="width:100%; height:100%;">
  
  <div class="col-md-6 col-lg-4 mb-3" style="width:33%; height:30%;">
    <div class="card h-100">
      <img class="card-img-top" src="../resources/sneat/assets/img/petsitterimg/2.jpg" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">안현정 고객님</h5>
        <p class="card-text">
          고양이가 두마리에요, 아시죠? 
        </p>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-4 mb-3" style="width:33%; height:30%;">
    <div class="card h-100">
      <img class="card-img-top" src="../resources/sneat/assets/img/petsitterimg/3.jpg" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">마찌집사 고객님</h5>
        <p class="card-text">
          마찌야 마찌해봐
        </p>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-4 mb-3" style="width:33%; height:30%;">
    <div class="card h-100">
      <img class="card-img-top" src="../resources/sneat/assets/img/petsitterimg/4.png" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">임정현 고객님</h5>
        <p class="card-text">
          개가 두 마리에요, 아시죠?
        </p>
      </div>
    </div>
  </div>

</div>


                    </div> <!-- / Content -->
                </div> <!-- Content wrapper -->
            </div> <!-- / Layout page -->
    </div> <!-- Layout container -->
</div> <!-- layout-wrapper layout-content-navbar -->


</body>
</html>