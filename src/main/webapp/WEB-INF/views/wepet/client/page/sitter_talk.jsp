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
    <%@ include file="../inc/sneat/sneat_navbar_link2.jsp" %>
        <!-- / Menu -->
        <div class="layout-container"> <!-- Layout container -->
            <div class="layout-page"> <!-- Layout-page -->
                <div class="content-wrapper"> <!-- Content wrapper -->
                    <div class="container-xxl flex-grow-1 container-p-y"> <!-- Content -->
                        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 톡 Talk 톡</h4>
                        <hr class="container-m-nx border-light mt-5">

                        <div class="card mb-4">
                            <div class="row g-0">
                                <div class="col-md-6 p-4" style="border:1px solid lightgrey">
                                    <div class="text-light small fw-semibold mb-3">User List</div>
                                    <div class="toast-container">
                                        <div class="bs-toast toast fade show bg-secondary" role="alert"
                                            aria-live="assertive" aria-atomic="true">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">감자님</div>
                                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                                            </div>
                                            <div class="toast-body">
                                                감자 냠냠
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-success" role="alert"
                                            aria-live="assertive" aria-atomic="true">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">고구마님</div>
                                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                                            </div>
                                            <div class="toast-body">
                                                고구마 냠냠
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-danger" role="alert" aria-live="assertive" aria-atomic="true">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">당근님</div>
                                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                                            </div>
                                            <div class="toast-body">
                                                당근 냠냠
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-warning" role="alert" aria-live="assertive" aria-atomic="true">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">수박님</div>
                                                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                                            </div>
                                            <div class="toast-body">
                                                수박 냠냠
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-info" role="alert" aria-live="assertive" aria-atomic="true">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">오이님</div>
                                                <button type="button" class="btn-close" data-bs-dismiss="toast"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="toast-body">
                                                오이냠냠
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6 ui-bg-overlay-container p-4" style="height:100%;">
                                    <div class="ui-bg-overlay bg-dark opacity-75 rounded-end-bottom"></div>
                                    <div class="text-white small fw-semibold mb-3">채팅창</div>
<div class="row1" style="height:90%;">
                                    <div class="toast-container">
                                        <div class="bs-toast toast fade show" role="alert" aria-live="assertive" aria-atomic="true" style="float:right;">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">감자</div>
                                                <small>11 mins ago</small>
                                            </div>
                                            <div class="toast-body">
                                                안녕하세요
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-secondary" role="alert" aria-live="assertive" aria-atomic="true" style="float:left;">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">고구마</div>
                                                <small>10mins ago</small>
                                            </div>
                                            <div class="toast-body">
                                                 안녕하세요
                                            </div>
                                        </div>

                                    <div class="toast-container">
                                        <div class="bs-toast toast fade show" role="alert" aria-live="assertive" aria-atomic="true" style="float:right;">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">감자</div>
                                                <small>8 mins ago</small>
                                            </div>
                                            <div class="toast-body">
                                                뭐하시나요
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-secondary" role="alert" aria-live="assertive" aria-atomic="true" style="float:left;">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">고구마</div>
                                                <small>6 mins ago</small>
                                            </div>
                                            <div class="toast-body">
                                                 뭐하겠어요
                                            </div>
                                        </div>

                                        <div class="bs-toast toast fade show bg-secondary" role="alert" aria-live="assertive" aria-atomic="true" style="float:left;">
                                            <div class="toast-header">
                                                <i class="bx bx-bell me-2"></i>
                                                <div class="me-auto fw-semibold">고구마</div>
                                                <small>5 mins ago</small>
                                            </div>
                                            <div class="toast-body">
                                                 말걸지마세요
                                            </div>
                                        </div>
</div>
                                        <div class="row2">
	                                         <div>
	                                         	<input type="text" style="width:92%;" >
	                                         	<button><i class='bx bx-send'></i></button>
	                                         </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> <!-- Content -->
                </div> <!-- Content wrapper -->
            </div> <!-- Layout-page -->
        </div> <!-- Layout container -->
</div><!-- layout-wrapper layout-content-navbar -->
</body>
</html>