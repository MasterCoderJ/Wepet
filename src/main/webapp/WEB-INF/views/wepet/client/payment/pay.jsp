<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@page import="com.edu.wepet.domain.PetSitter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%
	Member member2 =(Member)session.getAttribute("member");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>결제하기 페이지</title>
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


	<!--  Sidebar Start -->
	<!--  Sidebar End-->


	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container text-center py-5">
			<h1 class="display-3 text-white mb-4 animated slideInDown">예약 /
				결제</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb justify-content-center mb-0">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="#">마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">예약하기</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Quote Start -->
	<div class="container-fluid py-5">
		<div class="container">
			<div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s"
				style="max-width: 500px;">
				<p class="fs-5 fw-bold text-primary">결제 확인</p>
				<h1 class="display-5 mb-5">예약 정보 확인</h1>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-11">
					<div class="bg-light rounded p-4 p-sm-5 wow fadeInUp"
						data-wow-delay="0.1s">
						<div class="row g-3">



							<div class="col-sm-12">
								<div class="form-floating">

									<div class="cart_title">
										<h4 class="order-ttl">
											<span>01.</span> 예약 확인
										</h4>
										<hr>
									</div>


								</div>
							</div>



							<div class="col-sm-12">
								<div class="form-floating">

									<div class="table-responsive text-nowrap">
										<table class="table table-hover" style="height: 100px">
											<thead class="table-active">
												<tr>
													<th></th>
													<th>펫 종류</th>
													<th>펫 수</th>
													<th>예약 금액</th>
													<th>예약일</th>
													<th>예약 금액</th>
												</tr>
											</thead>
											<tbody class="table-border-bottom-0" id="tbody">

											</tbody>
										</table>
									</div>


								</div>
							</div>



							<div class="col-sm-6">
								<div class="form-floating">
									<input type="text" class="form-control border-0"
										id="customerName" placeholder="Gurdian Name" readonly="" value=""> <label
										for="customerName">주문자 : </label>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-floating">
									<input type="text" class="form-control border-0" id="amount"
										placeholder="Gurdian Name" value="" readonly=""> <label for="amount">총 예약 금액 :</label>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-floating">
									<input type="text" class="form-control border-0" id="orderName" readonly=""
										placeholder="Gurdian Name" value=""> 
										<label for="orderName">주문명 : </label>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-floating">
									<input type="text" class="form-control border-0" id="orderId"
										placeholder="Child Name" readonly="" value=""> 
										<label for="orderId">주문번호 : </label>
								</div>
							</div>


							<div class="col-sm-12">
								<div class="form-floating">
								<div class="row">
									<div class="col-sm-10 cart_title mt-5">
										<h4 class="order-ttl">
											<span>02. </span> 주문자 정보 확인
										</h4>
									</div>

							</div>									
							<hr>


								</div>
							</div>

							<div class="col-sm-12">
								<div class="text-end align-self-center mb-3">
									<button class="btn btn-primary" id="bt_registAddr" type="button">내 정보 저장하기</button>
								</div>
								<div class="form-floating">
									<input type="text" class="form-control border-0" id="addr1" name="addr1"
										placeholder="Gurdian Name" 
										value="<%if(request.getParameter("addr")!=null){request.getParameter("addr");}%>"> 
										<label for="gname">주소</label>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-floating">
									<input type="text" class="form-control border-0" id="phone"
										placeholder="Gurdian Name" value="<%if(request.getParameter("phone")!=null){request.getParameter("phone");}%>"> <label for="gnum">Mobile</label>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-floating">
									<input type="text" class="form-control border-0" id="email"
										placeholder="Child Name" value="<%if(request.getParameter("email")!=null){request.getParameter("email");}%>"> <label for="cname">email</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control border-0"
										placeholder="Leave a message here" id="message" value=""
										style="height: 100px"></textarea>
									<label for="message">요청사항</label>
								</div>
							</div>

							<input type="hidden" class="form-control" id="hiddenpet" value="">
							<input type="hidden" class="form-control" id="hiddenday" value="">
							<input type="hidden" class="form-control" id="hiddenidx" value="<%=request.getParameter("petsitter_idx")%>">

							
	


							<div class="col-sm-12">
								<div class="form-floating">

									<div class="cart_title mt-5">
										<h4 class="order-ttl">
											<span>03. </span> 결제 정보
										</h4>
										<hr>
									</div>


								</div>
							</div>


	




							<div class="col-6 text-center align-self-center">
								<div class="form-floating">
									<div class="card h-100">
										<div class="row">
											<div class="card-body">
												<div class="d-flex justify-content-center">
													<div class="form-check-inline m-1">
														<h5>결제 수단 선택</h5>
														<input class="form-check-input" type="radio" value="카드"
															name="check" checked=""> <label
															class="form-check-label" > 카드
														</label> <input class="form-check-input" type="radio" value="가상계좌"
															name="check"> <label
															class="form-check-label" >
															가상계좌 </label>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>



							<div class="col-12 text-center">
								<button class="btn btn-primary py-3 px-4" id="bt_pay"
									type="submit">결제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Quote End -->


	<!-- .col-md-8 -->


	<!-- Footer Start -->
	<!-- Footer End -->

	<!-- Copyright Start -->
	<%@ include file="../inc/gardener/inc/copyright_link.jsp"%>
	<!-- Copyright End -->




	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
		class="bi bi-arrow-up"></i></a>

</body>


<script type="text/javascript">

var clientKey = 'test_ck_YoEjb0gm23Pvlz55QYorpGwBJn5e'
var tossPayments = TossPayments(clientKey) // 클라이언트 키로 초기화하기


function getpay() {
	let how=$('input[name=check]:checked').val(); //카드 or 가상계좌 로만 받아와야함
	//let orderId=$("#orderId").val(); //받아와야
	let amount=$("#amount").val();
	let orderName=$("#orderName").val();
	let customerName=$("#customerName").val();	
	let orderId=$("#orderId").val();
	let msg=$("#message").val();
	let petkinds=$("#hiddenpet").val();
	let rdays=$("#hiddenday").val();
	let petsitter_idx=$("#hiddenidx").val();


	tossPayments.requestPayment(how, { // 결제 수단 파라미터
      // 결제 정보 파라미터
      amount: amount,
      orderId: orderId,
      orderName: orderName,
      customerName: customerName,
      successUrl: 'http://localhost:7777/payment/callback/success'+'?msg='+msg+'&petkinds='+petkinds+'&rdays='+rdays+'&petsitter_idx='+petsitter_idx,
      failUrl: 'http://localhost:7777/payment/callback/fail',

    })
    .catch(function (error) {
       if (error.code === 'USER_CANCEL') {
         // 결제 고객이 결제창을 닫았을 때 에러 처리
      	} else if (error.code === 'INVALID_CARD_COMPANY') {
       		// 유효하지 않은 카드 코드에 대한 에러 처리
     	}
    });	
}

function getData() {
	let data=JSON.parse(localStorage.getItem("data"));
	let pets=[];
	let days=[];
	
	for(let i=0; i<data.length; i++){
		//console.log(data[i].pet_kind);
		
		var insertTr="";
		insertTr="<tr>";
		insertTr+="<td></td>"
		insertTr+="<td>"+data[i].pet_kind+"</td>"
		insertTr+="<td>"+data[i].pet_number+"</td>"
		insertTr+="<td>"+data[i].fee+"</td>"
		insertTr+="<td>"+data[i].yy+"-"+data[i].mm+"-"+data[i].dd+"</td>"
		insertTr+="<td>"+data[i].fee+"</td>"
		insertTr+="</tr>";
		$("#tbody").append(insertTr);

		
		let a=(data[i].fee)*(i+1);
		$("#amount").val(a);
		$("#sp").val(a);
		
		let b="안현정 펫시터-"+data[i].pet_kind+"_"+data[i].pet_number+"_외"+data[i].mm+data[i].dd
		$("#orderName").val(b);
		
		pets.push(data[i].pet_kind);
		days.push(data[i].yy+"-"+data[i].mm+"-"+data[i].dd);

		$("#hiddenpet").val(pets);
		$("#hiddenday").val(days);

		
		
		
	}
}

function getId() {
	let nickname="<%=member2.getNickname()%>";	
	$("#customerName").val(nickname);
	
	
	
	$.ajax({
		url:"rest/encode",
		type:"get",
		success:function(result, status, xhr){
			
			console.log(result);
			let cc=<%=request.getParameter("petcount")+request.getParameter("date") %>;
			
			$("#orderId").val(result+cc);
		}
    });
	
}

function registAddr() {
	let addr1_name=$("#addr1").val();
	let phoneNumber=$("#phone").val();
	let emailaddr=$("#email").val();
	
//	console.log(addr1_name);

	let allData = { "addr1_name": addr1_name, "phoneNumber": phoneNumber, "emailaddr": emailaddr};
		
	$.ajax({
		url:"rest/registAddr",
		type:"post",
		data: allData,
		success:function(result, status, xhr){
			alert(result.msg);
		}
    });
}

// function getNick() {
<%-- 	let petsitter_idx=<%=request.getParameter("petsitter_idx")%>; --%>
	
// 	let allData = { "petsitter_idx": petsitter_idx};
	
// 	$.ajax({
// 		url:"rest/getNick",
// 		type:"get",
// 		data: allData,
// 		success:function(result, status, xhr){
// 			console.log(result.sitter_nickname);
// 			let nickname=result.sitter_nickname;
			
// 		}
//     });
	
// }
      
$(function(){	

	getId();	
	getData();
	
    $("#bt_registAddr").click(function(){      	
    	registAddr();
    });
	
    $("#bt_pay").click(function(){	
        getpay();
    });
});

</script>



</html>