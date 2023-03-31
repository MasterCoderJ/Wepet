
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>메인페이지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<!-- Header Start -->
	<%@ include file="../inc/gardener/inc/header_link.jsp"%>
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
				<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 일지 관리 </h4>
                        <hr class="container-m-nx border-light mt-5">
                        
<div class="card">
  <div class="card-body">
    <div class="table-responsive text-nowrap">
    <div class="mb">
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>번호</th>
        <th>구분</th>
        <th>제목</th>
        <th>작성일</th>
        <th></th>
      </tr>
    </thead>
    <tbody>


      <tr>
        <td>1</td>
        <td>
        	<strong>초보</strong>	
        </td>
        <td>교육을 잘 받은 초보였다. 믿고 맡길만 했다. 훈련 강사가 민진호쌤이라고 했었나...</td>
        <td>23-03-31</td>
        <td>
          <div class="dropdown">
            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
              <i class="bx bx-dots-vertical-rounded"></i>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1" id="bt_edit"></i> Edit</a>
              <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"  id="bt_del"></i> Delete</a>
            </div>
          </div> 
        </td>
      </tr>

    </tbody>
  </table>
  

  <div class="col">
    <div class="demo-inline-spacing">
      <!-- Basic Pagination -->
      <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center"">
          <li class="page-item first">
            <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevrons-left"></i></a>
          </li>
          <li class="page-item prev">
            <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevron-left"></i></a>
          </li>
          <li class="page-item">
            <a class="page-link" href="javascript:void(0);">1</a>
          </li>
          <li class="page-item next">
            <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevron-right"></i></a>
          </li>
          <li class="page-item last">
            <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevrons-right"></i></a>
          </li>
        </ul>
      </nav>
      <!--/ Basic Pagination -->
    </div>
  </div>

  
  <div>
    <button type="button" class="btn btn-success" id="bt_regist" style="float:right;">쓰기</button>
</div>
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
<script type="text/javascript">




$(function(){

	
	//등록 이벤트 연결 
	$("#bt_regist").click(function(){
		location.href="/member/registform";
	});
	
	$("#bt_edit").click(function(){

	});
	
	$("#bt_del").click(function(){

	});
	
	
});

</script>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</body>
</html>