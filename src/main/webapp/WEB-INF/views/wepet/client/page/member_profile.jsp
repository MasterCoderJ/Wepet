<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>메인페이지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<!-- Header Start -->
	<%-- <%@ include file="../inc/gardener/inc/header_link.jsp"%> 이거 땜에 date 안먹어서 주석처리--%>
	<!-- Header End -->
	
	<!--  sidebar-inc-->
	<%@ include file="../inc/sneat/sneat_header_link.jsp"%>
	<!--  sidebar-inc-->

	<!-- Topbar Start 맨 윗칸 전화모양-->
	<%@ include file="../inc/gardener/inc/topbar_link.jsp"%>
	<!-- Topbar End -->

	<!--  sidebar-inc-->
	<%@ include file="../inc/sneat/sneat_header_link2.jsp"%>
	<!--  sidebar-inc-->
	
	<!-- Navbar Start 카테고리부분-->
	<%@ include file="../inc/gardener/inc/navbar_link.jsp"%>
	<!-- Navbar End -->

</head>

<body class="" style="">
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
		<!-- Menu -->
		<%@ include file="../inc/sneat/sneat_navbar_link3.jsp" %>
		<!-- / Menu -->

            <!-- Layout container -->
            <div class="layout-page">
                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->
                    <div class="container-xxl flex-grow-1 container-p-y">
                        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 내 프로필 &amp; 반려동물 정보 설정 </h4>
                        <hr class="container-m-nx border-light mt-5">
                        <div class="col">
                            <div class="col-xl-6">
                                <div class="nav-align-top mb-4">
                                    <ul class="nav nav-pills mb-3 nav-fill" role="tablist">
                                        <li class="nav-item">
                                            <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#navs-pills-justified-home" aria-controls="navs-pills-justified-home" aria-selected="true">
                                                <i class="tf-icons bx bx-home"></i> 내 프로필
                                            </button>
                                        </li>
                                        <li class="nav-item">
                                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" data-bs-target="#navs-pills-justified-profile" aria-controls="navs-pills-justified-profile" aria-selected="false">
                                                반려동물 정보 설정
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 프로필 컨텐츠 시작 -->
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="navs-pills-justified-home" role="tabpanel">

                                    <div class="card">
                                        <div class="card-header d-flex align-items-center justify-content-between">
                                            <h5 class="mb-0">기본 정보</h5> <button type="button" class="btn btn-primary" style="float:right;" id="bt_sitter_regist">펫시터 지원</button>
                                        </div>
                                        <div class="card-body">

                                            <form>
                                            	<!-- 닉네임 -->
                                                <div class="row mt-5">
                                                    <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname" style="font-size:12pt;">활동명</label>
                                                    <div class="col">
                                                        <div class="input-group input-group-merge">
                                                            <span id="basic-icon-default-fullname2" class="input-group-text" ><i class="bx bx-user" ></i></span> 
                                                            <input type="text" class="form-control" id="basic-icon-default-fullname"  readonly class="form-control-plaintext"  style="font-weight:bold;" value="  마찌집사" aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
															<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#smallModalNick" style="float:right;"> 관리 </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                            <!-- Small Modal -->
                                                                <div class="modal fade" id="smallModalNick" tabindex="-1" style="display: none;" aria-hidden="true">
                                                                    <div class="modal-dialog modal-sm" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel2">활동명 변경</h5>
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <div class="row">
                                                                                    <div class="col mb-3">
                                                                                        <label for="nameSmall" class="form-label">기존</label>
                                                                                        <input type="text" class="form-control" style="font-weight:bold;"  value="  마찌집사" id="member_currentNick">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="row g-2">
                                                                                    <div class="col mb-0">
                                                                                        <label class="form-label"
                                                                                            for="emailSmall">변경</label>
                                                                                        <input type="text" class="form-control" placeholder="Enter Name" id="member_changeNick">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-primary" id="bt_change1">변경 저장</button>
                                                                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            <!-- Small Modal -->
                                            	<!-- 닉네임 -->
                                            	
                                            	<!-- 이메일 -->
                                                <div class="row mt-5">
                                                    <label class="col-sm-2 col-form-label" for="basic-icon-default-email" style="font-size:12pt;">가입일</label>
                                                    <div class="col">
                                                        <div class="input-group input-group-merge">
                                                            <span class="input-group-text"><span class="tf-icons bx bx-pie-chart-alt"></span></span>
                                                            <input type="text" class="form-control"readonly="readonly" id="member_regdate" style="font-weight:bold;" value="  2023-03-31" aria-describedby="basic-icon-default-email2">
                                   		                </div>
                                                    </div>
                                                </div>
                                            	<!-- 이메일 -->
                                            	
                                            	<!-- 활동지역 -->
												<div class="row mt-5">
												    <label class="col-sm-2 col-form-label" for="basic-icon-default-company" style="font-size:12pt;">지역설정</label>
												    <div class="col-sm-10">
												        <div class="input-group input-group-merge">
												            <span id="basic-icon-default-company2" class="input-group-text"><i class="bx bx-buildings"></i></span>
												            <input type="text" id="basic-icon-default-company" class="form-control" readonly="readonly" value="  서울특별시 마포구 대흥동 " style="font-weight:bold;" aria-label="ACME Inc." aria-describedby="basic-icon-default-company2">
															<button type="button" class="btn btn-primary"  style="float:right;" id="bt_map"> 관리 </button>
                                                           
												        </div>
												    </div>
												</div>
                                            	<!-- 활동지역 -->
                                            	<!-- 자기소개 -->
                                                <div class="mt-5">
                                                    <label class="form-label" for="basic-icon-default-message" style="font-size:12pt;">특이사항</label>
                                                    <div class="input-group input-group-merge">
                                                        <span id="basic-icon-default-message2" class="input-group-text"><i class="bx bx-comment"></i></span>
                                                        <textarea  id="basic-icon-default-message" class="form-control" aria-describedby="basic-icon-default-message2">
                                                        길냥이에게 간택받아 집사가 된 초보집사입니다. 고양이를 많이 아끼고 사랑하시는 분 원합니다.
                                                        </textarea>
                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalScrollableSelfintro" style="float:right;"> 관리 </button>
                                                    </div>
                                                    <!-- Scroll Modal -->
													<div class="modal fade" id="modalScrollableSelfintro" tabindex="-1" style="display: none;" aria-hidden="true">
													    <div class="modal-dialog modal-dialog-scrollable" role="document">
													        <div class="modal-content">
													            <div class="modal-header">
													                <h5 class="modal-title" id="modalScrollableTitle">자기소개 수정</h5>
													                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													            </div>
													            <div class="modal-body">
													                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"> 길냥이에게 간택받아 집사가 된 초보집사입니다. 고양이를 많이 아끼고 사랑하시는 분 원합니다.
													                </textarea>
													            </div>
													            <div class="modal-footer">
													                <button type="button" class="btn btn-primary">변경 저장</button>
													                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
													            </div>
													        </div>
													    </div>
													</div>
                                                    <!-- Scroll Modal -->
                                                </div>
                                            	<!-- 자기소개 -->

                                            </form>
                                            <form>
                                            <div class="mt-5">
                                            	<a href="/member/unregister" style="color:grey;">회원탈퇴</a>
                                            </div>
                                            </form>
	
                                        </div>
                                    </div>
                                </div>
                            <!-- 프로필 컨텐츠 끝 -->

                                <!-- 이력사항 컨텐츠 시작 -->
                                <div class="tab-pane fade" id="navs-pills-justified-profile" role="tabpanel">
                                	<div class="row">
                                		<!-- 활동사진 -->
                                		<div class="col-md-3">
											<div class="card h-100">
												<div class="form-check form-switch mt-3">
												    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked=""  style="float:right;">
												    <label class="form-check-label" style="align:right;">사진 공개여부</label>
												</div>
											<img class="img-fluid" src="/resources/sneat/assets/img/elements/awdwwdw.JPG" alt="Card image cap">
												<div class="card-body">
													<input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
													<button class="btn btn-outline-primary mt-2" type="button" id="inputGroupFileAddon04" style="float:right;" >등록</button>
												</div>
											</div>
                                		</div>
                                		<!-- 활동사진 -->
                                		
                                		<!-- 자격사항 -->
                                		<div class="col-md-8">
                                			<div class="card mb-4">
  <div class="card-header d-flex justify-content-between align-items-center">
    <h5 class="mb-0">반려동물 정보</h5>
  </div>
  <div class="card-body">
    <form>
      <div class="mb-3">
        <label class="form-label" for="basic-default-fullname">반려동물 종류</label>
        <select>
        	<option value="0">고양이</option>
        	<option value="1">소형견</option>
        	<option value="2">중형견</option>
        	<option value="3">대형견</option>
        </select>
      </div>
      <div class="mb-3">
        <label class="form-label" for="basic-default-company">주소</label>
        <input type="text" class="form-control" id="basic-default-company" value="  서울특별시 마포구 대흥동"  style="font-weight:bold;" readonly="readonly">
      </div>
      <div class="mb-3">
        <label class="form-label" for="basic-default-email">Email</label>
        <div class="input-group input-group-merge">
          <input type="text" id="basic-default-email" class="form-control" readonly="readonly" value="ymcho.dev@gmail.com" aria-label="john.doe" aria-describedby="basic-default-email2">
        </div>
        <div class="form-text">You can use letters, numbers &amp; periods</div>
      </div>
      <div class="mb-3">
        <label class="form-label" for="basic-default-phone">연락처</label>
        <input type="text" id="basic-default-phone" class="form-control phone-mask" readonly="readonly"  value="010-4101-0266">
      </div>
      <div class="mb-3">
        <label class="form-label" for="basic-default-message">특이사항</label>
        <textarea id="basic-default-message" class="form-control">하루 세 번 유산균 주기, 적어도 30분은 놀아주기</textarea>
      </div>
      <button type="button" class="btn btn-primary" style="float:right;">저장하기</button>
    </form>
  </div>
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- / Content -->
    </div>
    <!-- Content wrapper -->
</div>
<!-- / Layout page -->
</div>
<!-- 
<div class="page-flex">
    <div class="container justify-content-center">
        Copyright Start -->
       <%--  <%@ include file="../inc/gardener/inc/copyright_link.jsp" %> --%>
        <!-- Copyright End 
    </div>
</div>
-->
<!-- Back to Top -->
<!-- <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a> -->
</body>
<script type="text/javascript">


$(function () {
	$("#bt_sitter_regist").click(function() {
		location.href="/petsitter/registform";
	});
	
	
	$("#bt_map").click(function() {
		location.href="/member/map";
	});
	
});

</script>
</html>