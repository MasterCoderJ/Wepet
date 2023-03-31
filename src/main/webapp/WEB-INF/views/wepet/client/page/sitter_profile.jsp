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
		<%@ include file="../inc/sneat/sneat_navbar_link2.jsp" %>
		<!-- / Menu -->

            <!-- Layout container -->
            <div class="layout-page">
                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->
                    <div class="container-xxl flex-grow-1 container-p-y">
                        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 내 프로필 &amp; 이력사항 </h4>
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
                                                <i class="tf-icons bx bx-user"></i> 이력사항
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
                                            <h5 class="mb-0">기본 정보</h5>
                                        </div>
                                        <div class="card-body">

                                            <form>
                                            	<!-- 닉네임 -->
                                                <div class="row mt-5">
                                                    <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname" style="font-size:12pt;">활동명</label>
                                                    <div class="col">
                                                        <div class="input-group input-group-merge">
                                                            <span id="basic-icon-default-fullname2" class="input-group-text"><i class="bx bx-user"></i></span> 
                                                            <input type="text" class="form-control" id="basic-icon-default-fullname"  readonly class="form-control-plaintext" value=" 고양이 호텔 까르텔" aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
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
                                                                                        <input type="text" class="form-control"  readonly class="form-control-plaintext" value=" 고양이 호텔 까르텔"  id="sitter_currentNick">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="row g-2">
                                                                                    <div class="col mb-0">
                                                                                        <label class="form-label"
                                                                                            for="emailSmall">변경</label>
                                                                                        <input type="text" class="form-control" placeholder="Enter Name" id="sitter_changeNick">
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
                                                            <input type="text" class="form-control" id="sitter_regdate" readonly class="form-control-plaintext" value="23-03-31" aria-label="john.doe" aria-describedby="basic-icon-default-email2">
                                                            
                                   		                </div>
                                                    </div>
                                                </div>
                                            	<!-- 이메일 -->
                                            	
                                            	<!-- 활동지역 -->
												<div class="row mt-5">
												    <label class="col-sm-2 col-form-label" for="basic-icon-default-company" style="font-size:12pt;">활동지역</label>
												    <div class="col-sm-10">
												        <div class="input-group input-group-merge">
												            <span id="basic-icon-default-company2" class="input-group-text"><i class="bx bx-buildings"></i></span>
												            <input type="text" id="basic-icon-default-company" class="form-control" readonly class="form-control-plaintext" value=" 서울특별시 강남구 신사동 "  aria-label="ACME Inc." aria-describedby="basic-icon-default-company2">
															<button type="button" class="btn btn-primary"  style="float:right;" id="bt_map"> 관리 </button>
                                                           
												        </div>
												    </div>
												</div>
                                            	<!-- 활동지역 -->
                                            	<!-- 자기소개 -->
                                                <div class="mt-5">
                                                    <label class="form-label" for="basic-icon-default-message" style="font-size:12pt;">자기소개</label>
                                                    <div class="input-group input-group-merge">
                                                        <span id="basic-icon-default-message2" class="input-group-text"><i class="bx bx-comment"></i></span>
                                                        <textarea  id="basic-icon-default-message" class="form-control" aria-describedby="basic-icon-default-message2">안녕하세요. 강남에 있는 고양이 호텔 까르텔입니다.</textarea>
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
													                <textarea class="form-control" id="exampleFormControlTextarea1">안녕하세요. 강남에 있는 고양이 호텔 까르텔입니다.</textarea>
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
                                            	<a href="/sitter/unregister" style="color:grey;">회원탈퇴</a>
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
												    <label class="form-check-label" style="align:right;">활동사진 공개여부</label>
												</div>
											<img class="img-fluid" src="/resources/sneat/assets/img/petsitterimg/5.png" alt="Card image cap">
												<div class="card-body">
													<input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
													<button class="btn btn-outline-primary mt-2" type="button" id="inputGroupFileAddon04" style="float:right;" >등록</button>
												</div>
											</div>
                                		</div>
                                		<!-- 활동사진 -->
                                		
                                		<!-- 자격사항 -->
                                		<div class="col-md-8">
                                			<div class="col">
												<div class="form-check form-switch">
                                				<h5>자격사항 <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#smallModalLicense"> 관리 </button>
                                				<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked=""  style="float:right;">
                                				</h5>
<div class="card mb-5">
<div class="table-responsive text-nowrap">
  <table class="table">
    <thead>
      <tr>
        <th>자격증</th>
        <th>취득일</th>
        <th></th>
      </tr>
    </thead>
    <tbody class="table-border-bottom-0">
      <tr>
        <td><strong>반려동물종합관리사</strong></td>
        <td>23-03-31</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
                                                            <!-- Small Modal -->
                                                            <div class="col-md-2">
                                                                <div class="modal fade" id="smallModalLicense" tabindex="-1" style="display: none;" aria-hidden="true">
                                                                    <div class="modal-dialog modal-sm" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel1">자격사항 관리</h5>
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <div class="row">
                                                                                    <div class="col mb-3">
<select id="defaultSelect" class="form-select">
<option value="0">자격증 선택</option>
<option value="1">반려동물종합관리사</option>
<option value="2">반려동물행동교정사</option>
<option value="3">펫트리머</option>
<option value="4">애견미용사</option>
<option value="5">핸들러</option>
<option value="6">훈련사</option>

<%-- <%for(CertCategory certCategory : certCategoryList){ %>
<option value="<%=certCategory.getCertCategory_idx()%>"><%=certCategory.getCertCategory_name() %></option>
<%} %> --%>
</select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="row g-2">
                                                                                    <div class="col mb-0">
                                                                                    	<input class="form-control" type="date" value="" id="html5-date-input">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-primary">변경 저장</button>
                                                                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Small Modal -->
                                				</div>
                                			</div>
                                		<!-- 자격사항 끝-->
                                		
                                		<!-- 이력사항 시작-->
                                			<div class="col">
												<div class="form-check form-switch mt-3">
                                				<h5>이력사항 <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalScrollableResume"> 관리 </button>
                                				<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked=""  style="float:right;">
                                				</h5>
<div class="card mb-5">
<div class="table-responsive text-nowrap">
  <table class="table">
    <thead>
      <tr>
        <th>활동 내역</th>
        <th></th>
      </tr>
    </thead>
    <tbody class="table-border-bottom-0">
      <tr>
        <td><strong>現) 고양이호텔 까르텔 운영</strong></td>
      </tr>
      <tr>
        <td>前) 보듬 컴퍼니 활동</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
                                                    <!-- Scroll Modal -->
													<div class="modal fade" id="modalScrollableResume" tabindex="-1" style="display: none;" aria-hidden="true">
													    <div class="modal-dialog modal-dialog-scrollable" role="document">
													        <div class="modal-content">
													            <div class="modal-header">
													                <h5 class="modal-title" id="modalScrollableTitle">이력 수정</h5>
													                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													            </div>
													            <div class="modal-body">
														            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3">
														                    現) 고양이호텔 까르텔 운영
														                    前) 보듬 컴퍼니 활동

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
                                			</div>
                                			<!-- 이력사항 끝-->
                                			
                                			<!-- 경력사항 시작-->
                                			<div class="col">
												<div class="form-check form-switch mt-3">
                                				<h5>경력사항 <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#smallModalExp"> 관리 </button>
                                				<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked=""  style="float:right;">
                                				</h5>
<div class="card mb-5">
<div class="table-responsive text-nowrap">
  <table class="table">
    <thead>
      <tr>
        <th>활동내용</th>
        <th>기간</th>
        <th></th>
      </tr>
    </thead>
    <tbody class="table-border-bottom-0">
      <tr>
        <td><strong>고양이 돌봄 서비스</strong></td>
        <td>23-03-31 - 23-03-31</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
                                                            <!-- Small Modal -->
                                                            <div class="col-md-2">
                                                                <div class="modal fade" id="smallModalExp" tabindex="-1" style="display: none;" aria-hidden="true">
                                                                    <div class="modal-dialog modal-sm" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel2">경력 수정</h5>
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <div class="row">
                                                                                    <div class="col mb-3">
                                                                                        <label for="nameSmall" class="form-label">활동내용</label>
                                                                                        <input id="dobSmall" type="text" class="form-control" placeholder="내용을 입력하세요">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="row g-2">
                                                                                    <div class="col mb-0">
                                                                                        <label for="dobSmall" class="form-label">기간입력</label>
                                                                                        <input id="dobSmall" type="text" class="form-control" placeholder="YY / MM / DD">
                                                                                        <span style="display: inline-block; width:100%; text-align:center;"><strong>-</strong></span>
                                                                                        <input id="dobSmall" type="text" class="form-control" placeholder="YY / MM / DD">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-primary">변경 저장</button>
                                                                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Small Modal -->
												</div>
                                			</div>
                                			<!-- 경력사랑 끝-->
                                	</div>
                                </div>
                                <!-- 이력사항 컨텐츠 끝 -->
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
	$("#bt_map").click(function() {
		location.href="/sitter/map";
	});
});

</script>
</html>