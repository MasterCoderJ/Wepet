<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@page import="com.edu.wepet.domain.PetSitter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%

	List<PetSitter> petsitterList= (List)request.getAttribute("petsitterList");
	
	Logger logger= LoggerFactory.getLogger(this.getClass());
	logger.info("리스트"+ petsitterList);
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>펫시터 리스트</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Header Start -->
<%@ include file="../inc/gardener/inc/header_link.jsp"%>
<!-- Header End -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.13/vue.js"></script>
<script type="text/javascript" src="/resources/js/Pager.js"></script>
<script type="text/javascript" src="/resources/js/juso.js"></script>
</head>

<body>
	<!-- Topbar Start 맨 윗칸 전화모양-->
	<%@ include file="../inc/gardener/inc/topbar_link.jsp"%>
	<!-- Topbar End -->

	<!-- Navbar Start 카테고리부분-->
	<%@ include file="../inc/gardener/inc/navbar_link.jsp"%>
	<!-- Navbar End -->

	<!-- Body -->
	<a class="skip-link sr-only" href="#skip-target">Skip to content</a>

	<div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeIn;">
		<div class="container text-center py-5">
			<h1 class="display-3 text-white mb-4  slideInDown">펫시터 선생님들을 소개합니다</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb justify-content-center mb-0">
					<li class="breadcrumb-item">지역/ 성별/ 경력 조건에 맞는 선생님을 선택해 보세요</li>
				</ol>
			</nav>
		</div>
	</div>

	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px; visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
				<p class="fs-5 fw-bold text-primary">카테고리를 선택해 주세요</p>
				<div class="row" style="margin-top: 50px;">
					<div class="col">
						<div>
							<label for="addressRegion1" class="form-label">전역</label> 
							<select name="addressRegion" id="addressRegion1" style="width: 100px;"></select>
						</div>
					</div>

					<div class="col">
						<div>
							<label for="addressDo1" class="form-label">시/군</label> 
							<select name="addressDo" id="addressDo1" style="width: 100px;"></select>
						</div>
					</div>

					<div class="col">
						<div>
							<label for="addressSiGunGu1" class="form-label">구</label> 
							<select name="addressSiGunGu" id="addressSiGunGu1" style="width: 100px;"></select>
						</div>
					</div>

					<div class="col">
						<button type="button" class="btn btn-primary" style="margin-top: 30px;">검색</button>
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 60px;">
			<%for(int i=0; i<petsitterList.size(); i++){ %>
			<%PetSitter petSitter= petsitterList.get(i); %>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp; margin-top: 10px;">
					<div class="team-item rounded">
						<img class="img-fluid" src="../../../resources/gardener/img/team-1.jpg" style="height: 400px; width: 300px">
						<div class="team-text" style="width: 290px;">
							<h4 class="mb-0"><%=petSitter.getSitter_nickname() %></h4>
							<p class="text-primary">펫시터</p>
							<div class="team-social d-flex">
								<a class="btn btn-primary" href="/reservation?petsitter_idx=<%=petSitter.getPetsitter_idx()%>" style="margin-top: 5px;"><i>예약</i></a>
							</div>
						</div>
					</div>
				</div>
				<%} %>
				<tr>
					<td class="text-center" colspan="8" id="paging-area"></td>
				</tr>
			</div>
		</div>
	</div>

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</body>

<script type="text/javascript">


</script>


</html>