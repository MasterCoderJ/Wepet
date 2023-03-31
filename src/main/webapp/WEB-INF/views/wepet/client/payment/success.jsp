<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@page import="com.edu.wepet.domain.OrderSummary"%>
<%
	OrderSummary orderSummary=(OrderSummary)request.getAttribute("orderSummary");
	Member member2 =(Member)session.getAttribute("member");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>결제 성공</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Header Start -->
<%@ include file="../inc/gardener/inc/header_link.jsp"%>
<!-- Header End -->

<script src="https://js.tosspayments.com/v1/payment"></script>

</head>

<body>
<!-- Spinner Start 로딩시 빙글빙글이라 따로 안뺌-->
<!-- Spinner End -->

<!-- Topbar Start 맨 윗칸 전화모양-->
<%@ include file="../inc/gardener/inc/topbar_link.jsp"%>
<!-- Topbar End -->

<!-- Navbar Start 카테고리부분-->
<%@ include file="../inc/gardener/inc/navbar_link.jsp"%>
<!-- Navbar End -->

<!-- Body -->
<a class="skip-link sr-only" href="#skip-target">Skip to content</a>

<div class="page-flex">
<!--  Sidebar Start -->
<!--  Sidebar End-->

	<div class="container justify-content-center">
	
		<div class="cart_title m-5">
		<h2 class="ttl-h2">예약/결제</h2>
		</div>


			<div class="row justify-content-center">
				<div class="col-xl-10 ftco-animate fadeInUp ftco-animated">
					<div class="cart_title">
						<h1 class="order-ttl text-center">고객님의 예약이 정상적으로 완료되었습니다.</h1>
						<hr>
					</div>
					<form id="form1">
						<div>

							<div class="row mt-5 pt-3 d-flex">
								<div class="col">
									<div class="cart-detail cart-total bg-light p-3 p-md-4">
									<div class="m-3">
										<p class="d-flex">
											<span class="col-4" style="font-weight: bold; font-size: 20px">예약 정보</span> 
										</p>
										<br>
										<p class="d-flex">
											<span class="col-4">예약 하신 고객님</span> 
											<span class="col-8"><%=member2.getNickname()%></span>
										</p>
										<br>
										<p class="d-flex">
											<span class="col-4">예약 한 펫시터</span> 
											<%String name=orderSummary.getOrderName();%>
											<%int a=name.lastIndexOf("펫시터-"); %>
											<%String content=name.substring(0, a); %>
											<span class="col-8"><%=content%></span>
										</p>
										<br>
										<p class="d-flex total-price">
											<span class="col-4">주문명</span>
											<span class="col-8"><%=orderSummary.getOrderName() %></span>
										</p>
										<br>
										<p class="d-flex">
											<span class="col-4">예약 번호</span> 
											<span class="col-8"><%=orderSummary.getOrderId()%></span>
										</p>
										<br>
										<p class="d-flex  mb-5">
											<span class="col-4">방문 예정지 주소</span>
											<span class="col-8">주소 나올곳</span>
										</p>
										<hr>
										<p class="d-flex total-price">
											<span class="col-4" style="font-weight: bold; font-size: 20px">결제 정보</span>
										</p>
										<br>
										<p class="d-flex total-price">
											<span class="col-4">결제 수단</span>
											<span class="col-8"><%=orderSummary.getMethod() %></span>
										</p>
										<br>
										<p class="d-flex total-price">
											<span class="col-4">결제 일시</span>
											<span class="col-8"><%=orderSummary.getRequestedAt() %></span>
										</p>
										<br>
										<p class="d-flex total-price">
											<span class="col-4">최종 결제 금액</span>
											<span class="col-8"><%=orderSummary.getAmount() %> 원</span>
										</p>
									</div>
									</div>
								</div>
							</div>
							<div class="col">
								<div class="d-flex justify-content-center">
									<p>
										<a href="/" class="btn btn-primary m-5  py-3 px-4 text-white" style="width: 200px"> 홈으로 가기 </a>
									</p>
									<p>
										<a href="/sitter/mypage?petsitter_idx=<%=request.getParameter("petsitter_idx")%>" class="btn btn-primary m-5 py-3 px-4 text-white" style="width: 200px">예약내역 보기</a>
									</p>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>




		<!-- Footer Start -->
		<!-- Footer End -->
	
		<!-- Copyright Start -->
		<%@ include file="../inc/gardener/inc/copyright_link.jsp"%>
		<!-- Copyright End -->

		</div>
	</div>


	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
	
</body>
<script type="text/javascript">

function init() {
	let msg="<%=request.getParameter("msg")%>";
	let petkinds="<%=request.getParameter("petkinds")%>";
	let rdays="<%=request.getParameter("rdays") %>";
	let petsitter_idx="<%=request.getParameter("petsitter_idx") %>";
	let member_idx="<%=member2.getMember_idx() %>";
	console.log(member_idx);
	
	let ordersummary_idx=<%=orderSummary.getOrdersummary_idx()%>;
	
	let allData={"msg":msg, "petkinds":petkinds, "rdays":rdays, "petsitter_idx":petsitter_idx, "member_idx":member_idx, "ordersummary_idx":ordersummary_idx};

	$.ajax({
		url:"/rest/urlparam",
		type:"post",
		data:allData,
		success:function(result, status, xhr){
			

		}
    });
	
}


$(function(){
	init();
	

});

</script>
</html>