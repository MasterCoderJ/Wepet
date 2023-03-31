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
	<!-- Menu -->
	<%@ include file="../inc/sneat/sneat_navbar_link2.jsp"%>
	<!-- / Menu -->
	<div class="layout-container"> <!-- Layout container -->
		<div class="layout-page"> <!-- Layout-page -->
			<div class="content-wrapper"> <!-- Content wrapper -->
				<div class="container-xxl flex-grow-1 container-p-y"> <!-- Content -->
				<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">마이페이지 /</span> 회원탈퇴 </h4>
				<hr class="container-m-nx border-light mt-5">
				
<div class="card">
  <h5 class="card-header"><strong>탈퇴 안내</strong></h5>
  <div class="card-body">
    <div class="table-responsive text-nowrap">
    <div class="row1">
		<span>사용하고 계신 아이디(<em>dydalswwkd</em>)는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</span>
		<p><strong><em style="color:red;">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</em></strong></p>
		<p> 회원정보 및 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다<br>
		<p> 삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요. </p>	
	</div>
	<div class="row2">
	  <table class="table table-bordered">
	    <tbody>
	      <tr style="display: table-row;">
	        <th scope="row">예약내역</th>
	        <td>일반 회원 및 펫시터 예약 내역 삭제</td>
	      </tr>
	      <tr style="display: table-row;">
	        <th scope="row">이용내역</th>
	        <td>일반 회원 및 펫시터 이용 내역 삭제</td>
	      </tr>
	      <tr style="display: table-row;">
	        <th scope="row">정산내역</th>
	        <td>펫시터 정산 내역 삭제</td>
	      </tr>
	    </tbody>
	  </table>
	</div>
<br>
<div class="row3">
  <h6><strong>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</strong></h6>

  <p>커뮤니티 및 마이페이지 일지에 올린 게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.
    <br>
    삭제를 원하는 게시글이 있다면 <strong><em style="color:red;">반드시 탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.</em></strong>
    <br>
    탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다
  </p>
</div>

	
      <table class="table table-bordered">
        <tbody>
        <tr style="display: table-row;">
        	<th scope="row">유저 게시판</th>
 			<td>커뮤니티 내 유저 게시판 작성 게시글 및 댓글</td>
        </tr>
        <tr style="display: table-row;">
        	<th scope="row">펫시터 게시판</th>
 			<td>커뮤니티 내 펫시터 게시판 작성 게시글 및 댓글</td>
        </tr>
        <tr style="display: table-row;">
        	<th scope="row">마이페이지 일지</th>
 			<td>마이페이지 내 일지 삭제</td>
        </tr>
        </tbody>
      </table>

<hr class="border-light mt-5">

<div class="row3">
  <strong>
    탈퇴 후에는 동일한 아이디 <em>dydalswwkd</em> 로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.
    <br>
    게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.<br>
  </strong>
</div>


<div class="row4 mt-3">
    <input type="checkbox">
    <label> 안내 사항을 모두 확인하였으며, 이에 동의합니다. </label>
</div>

<div class="row5">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#smallModalUnregit">확인</button>
  <!-- Small Modal -->
  <div class="modal fade" id="smallModalUnregit" tabindex="-1" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel2">탈퇴 확인</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col mb-3">
              <span>정말 탈퇴하시겠습니까?</span>

            </div>
          </div>
          <div class="row g-2">
            <div class="col mb-0">
              <label class="form-label" for="emailSmall"></label>

            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="bt_unregist">확인</button>
          <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Small Modal -->
</div>


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



	$(function() {
		$("#bt_unregist").click(function() {
			location.href="/";
		})
		
	});


</script>
</html>