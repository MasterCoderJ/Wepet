<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>메인페이지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- Header Start -->
<%@ include file="../inc/sneat/sneat_header_link.jsp"%>
<!-- Header End -->

<!-- Header Start -->
<%@ include file="../inc/gardener/inc/header_link.jsp"%>
<!-- Header End -->

<script src="https://js.tosspayments.com/v1/payment"></script>

</head>

<body>
<!-- Spinner Start 로딩시 빙글빙글이라 따로 안뺌-->
<!-- <div id="spinner"
	class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
	<div class="spinner-border text-primary" role="status"
		style="width: 3rem; height: 3rem;"></div>
</div> -->
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
            <div class="container mt-3">

                <div class="row">
                    <div class="col">
                        <!-- Content Wrapper. Contains page content -->
                       
                            

                            <!-- Main content -->
                            <section class="content">

                                <!-- Default box -->
                               <input type="hidden" id="board_idx">
                                <div class="card collapsed-card" id="card" style="display: none;">
                                    <div class="card-header">
                                        <h3 class="card-title" id="card-title"></h3>
                                        

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse" id="collapse" control-id="ControlID-3">
                                                <i class="fas fa-plus"></i>
                                            </button>
                                            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove" id="remove" control-id="ControlID-4">
                                                <i class="fas fa-times" onclick="close()"></i>
                                            </button>
                                        </div>
                                    </div>
                                    
                                    <div class="card-body" id="card-body" style="display: none;">
                                    </div>
                                      <div class="card-body" style="text-align: center; display: none;" >
                                      	<a>
                                      	<h3>
                                      	<img height="90px" src="/resources/recommand-icon.png"  href="#"  id="bt_reco"/>           
                                      	</h3>
                                      	</a>
                                      </div>
                                      <div class="card-body" style="text-align: center; display: none;" >
                                      <div class="row">
                                        <div class = "col-6" id="writer">1</div>
                                        <div class = "col-6" id="regdate">2</div>
                                      </div>
                                       
                                      
                                      </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer" id="card-footer" style="display: none;">
                                        <table class="table" style="table-layout:fixed">
                        <thead>
                            <tr>
                                <th width="18%">작성자</th>
                                <th width="64%" style="text-align: center">내용</th>
                                <th width="18%">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i=0;i<3;i++){%>
                                <tr>
                                    <td>John</td>
                                    <td style="text-align: center">테스트용 내용 입니다</td>
                                    <td>2023-03-31</td>
                                </tr>
                                <%}; %>
                        </tbody>
                    </table>
                                          <div class="row m-3">
                                           <input class="col-9" type="text" id="content" placeholder="여기에 댓글을 작성하세요" name="content" control-id="ControlID-5">
                                            <button type="button" class="col-1 btn btn-primary m-3" control-id="ControlID-6" id = "bt_reply_regist">등록</button>
                                            <button type="button" class="col-1 btn btn-primary m-3" control-id="ControlID-6" id = "bt_delete">글 삭제</button>
                                        </div>
                                    </div>
                                    <!-- /.card-footer-->
                                </div>                                
                                <!-- /.card -->

                            </section>
                            <!-- /.content -->
                        </div>
                        <!-- /.content-wrapper -->

                    </div>
                

   <div class="container mt-3">

                <div class="container mt-3 mb-3">
                    <table class="table" style="table-layout:fixed">
                        <thead>
                            <tr>
                                <th width="7%">No</th>
                                <th width="64%"></th>
                                <th width="7%">작성자</th>
                                <th width="8%">작성일</th>
                                <th width="7%">조회수</th>
                                <th width="7%">추천</th>
                            </tr>
                        </thead>
                     
                        <tbody id="tbody">
                                
                         </tbody>
                           
                    </table>
                </div>
                <div class="container m-3">
                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <div class="container">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary" id="bt_write">글쓰기</button>
                                </div>
                            </div>
                        </li>
                    </ul>

                    <ul class="pagination justify-content-center">
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
                    </ul>

                </div>

                <!--  <div class="container m-3">
                    <div class="row" style="float: none; margin: 0 auto">
                        <div class="col-3" style="float: none; margin: 0 auto">
                            <div class="dropdown">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
                                    선택하세요
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Link 1</a></li>
                                    <li><a class="dropdown-item" href="#">Link 2</a></li>
                                    <li><a class="dropdown-item" href="#">Link 3</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-6" style="float: none; margin: 0 auto">
                            <form>
                                <input type="text" class="form-control" placeholder="Enter email" name="email">
                            </form>
                        </div>
                        <div class="col-3" style="float: none; margin: 0 auto">
                            <button type="button" class="btn btn-primary">
                                검색
                            </button>
                        </div>
                    </div>

				-->


                <!-- Footer Start -->

                <!-- Footer End -->



                <!-- Back to Top -->
                <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
                        class="bi bi-arrow-up"></i></a>


                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/resources/gardener/lib/wow/wow.min.js"></script>
                <script src="/resources/gardener/lib/easing/easing.min.js"></script>
                <script src="/resources/gardener/lib/waypoints/waypoints.min.js"></script>
                <script src="/resources/gardener/lib/owlcarousel/owl.carousel.min.js"></script>
                <script src="/resources/gardener/lib/counterup/counterup.min.js"></script>
                <script src="/resources/gardener/lib/parallax/parallax.min.js"></script>
                <script src="/resources/gardener/lib/isotope/isotope.pkgd.min.js"></script>
                <script src="/resources/gardener/lib/lightbox/js/lightbox.min.js"></script>

                <!-- Template Javascript -->
                <script src="/resources/gardener/js/main.js"></script>


                <!-- Chart library -->
                <script src="/resources/elegant/plugins/chart.min.js"></script>
                <!-- Icons library -->
                <script src="/resources/elegant/plugins/feather.min.js"></script>
                <!-- Custom scripts -->
                <script src="/resources/elegant/js/script.js"></script>

                <!-- jQuery -->
                <script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
                <!-- Bootstrap 4 -->
                <script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
                <!-- pace-progress -->
                <script src="/resources/admin/plugins/pace-progress/pace.min.js"></script>
                <!-- AdminLTE App -->
                <script src="/resources/admin/dist/js/adminlte.min.js"></script>
                <!-- AdminLTE for demo purposes -->

				<script type="text/javascript">
				let json;
				
				let nowidx;
				
				let content;
				
				let list;
				
				var tag;
				
				
				function getList(){
					
					$.ajax({
						method:"GET",
						url:"/getlist",
						success:function(data){
							
							list = JSON.parse(data);
							console.log(list);
							
							createTable(list);
						}
					});
				}
				
				function createTable(list){
					for(let i = 0 ; i<list.length; i++){
				
						let board = list[i];
						tag = tag+"<tr>"
						tag = tag+"<td>"+list[i].community_board_idx+"</td>"
						tag = tag+"<a><td onclick='hello("+list[i].community_board_idx+")'>"+list[i].title+"</td></a>"
						tag = tag+"<td>"+list[i].member.nickname+"</td>"
						tag = tag+"<td>"+list[i].regdate+"</td>"
						tag = tag+"<td>"+list[i].hit+"</td>"
						tag = tag+"<td>"+list[i].recommand_cnt+"</td>"
						
						tag= tag+"</tr>"
						console.log(tag)
					}
					$("#tbody").append(tag);
				}
				
				
				function addReply(){
					content=$("#content").val();
					$.ajax({
						method:"post",
						url: "/addreply",
						data: {
							"community_board_idx": nowidx,
							"content": content
							
					},
						success:function(data, status, xhr){
							
						}
						
					});
					
					
					
				}
				
				
				
				$(function(){
					getList();
					
					
					$("#bt_write").click(function(){
						location.href="/gardener/write"
					});
					
					$("#bt_reco").click(function(){
						alert("추천하셨습니다 ");
					});
                    $("#bt_del").click(function(){
						$("#remove").click();
					});
                    $("#bt_test").click(function(){
						
					if($("#card-body").css("display")=="none"){
						$("#collapse").click();
						
					};
					$("#bt_reply_regist").click(function(){
						alert("개발중인 기능입니다");
					})
				
					
                   

						
					});
                    //글 읽기 창이 생성되거나 확장되는 경우의 수를 생각해보자
                    //1. view 페이지 처음 접근 시, 창이 없어야함 >>>>> 페이지 설정을 none으로 하면 해결
                    //2. none상태에서 새 글 클릭시 >>제목창 생성>>본문창 확장 애니메이션
                    //none에서 제목만 보이는 상태로 변경>>본문 확장 버튼 클릭
                    //3. 다른 글 클릭>> 글 내용만 동적으로 변경??
                    		
                    //댓글 등록하기
                    $("#bt_reply_regist").click(function(){
                    	addReply();
                    });
                    
                    //글삭제
                    
	               $("#bt_delete").click(function(){
                    if(confirm("글을 삭제하시겠습니까?")){
                    	
	                   		delBoard();
                    }else{
	                    }
                    	
                    });
				});
				let card = document.getElementById("card");
				function hello(board_idx){
					nowidx=board_idx
					console.log("넘겨받은 글 번호는 "+board_idx);
					getBoardDetail(board_idx);
					
                    //상단 창이 안보이는 경우
                    if($("#card").css("display")=="none"){
                       
                        //상단 창 x 바디x
                        if($("#card-body").css("display")=="none"){
                            card.style.display='block';
                            //데이터 변경
                            $("#collapse").click();

                        //상단 창 x 바디O
                        }else{
                            $("#collapse").click();
                            //데이터 변경
                            card.style.display='block';
                            setTimeout(function(){
							    $("#collapse").click();
						    },1000);

                        }
                    //상단 창 O
                    }else{
                        //상단 창O 바디x
                        if($("#card-body").css("display")=="none"){
                            card.style.display='none';
                            //데이터 변경
                            card.style.display='block';
                           
                            $("#collapse").click();

                        //상단 창O 바디O
                        }else{
                            $("#collapse").click();
                            card.style.display='none';
                            //데이터 변경
                            card.style.display='block';
                            setTimeout(function(){
							    $("#collapse").click();
						    },1000);

                        }

                    }
				}
				
				function close(){
                    $("#collapse").click();
                }
				
				function getBoardDetail(board_idx){
					$.ajax({
						method: "get",
						url: "/getBoardDetail",
						data: 
						
						{
							"board_idx": board_idx
							},
						success: function(data, status, xhr){
							console.log(data);
							json=JSON.parse(data);
							
							console.log(json);
							console.log(json.nickname);
							console.log(json.regdate);
						
							setContent(json,board_idx);
						}
						
					});
				}
				
				
				function setContent(json,board_idx){
					console.log(board_idx+" 번 글의 내용을 가져옵니다.");
					$("#board_idx").val(board_idx)
					$("#card-title").text("["+json.community_cat2.cat2+"]      "+json.title);
					$("#card-body").empty();
					$("#card-body").append(json.content);
					$("#writer").text("작성자: "+json.member.nickname);
					$("#regdate").text("작성일: "+json.regdate);
				};
				
				function delBoard(){
					$.ajax({
						data:{
							"board_idx":$("#board_idx").val()
						},
						url:"/deleteboard",
						method:"post",
						success:function(){
							location.href="/gardener/view"
						}
						
						
					});
				}


				</script>

<!--  Sidebar End-->

	<div class="container justify-content-center">
	
	
	
	
	


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

</html>