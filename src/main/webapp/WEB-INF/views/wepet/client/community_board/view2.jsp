<%@ page contentType="text/html;charset=UTF-8" %>

    <!DOCTYPE html>
    <html lang="UTF-8">

    <head>
        <meta charset="utf-8">
        <title>Gardener - Gardening Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="/resources/gardener/lib/animate/animate.min.css" rel="stylesheet">
        <link href="/resources/gardener/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="/resources/gardener/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="/resources/gardener/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="/resources/gardener/css/style.css" rel="stylesheet">


        <!-- Favicon -->
        <link rel="shortcut icon" href="/resources/elegant/img/svg/logo.svg" type="image/x-icon">
        <!-- Custom styles -->
        <link rel="stylesheet" href="/resources/elegant/css/style.min.css">


        <!-- adminlte -->
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
        <!-- pace-progress -->
        <link rel="stylesheet" href="/resources/admin/plugins/pace-progress/themes/black/pace-theme-flat-top.css">
        <!-- adminlte-->
        <link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">





    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
        </div>
        <!-- Spinner End -->



        <!-- Topbar Start -->
        <div class="container-fluid bg-dark text-light px-0 py-2">
            <div class="row gx-0 d-none d-lg-flex">
                <div class="col-lg-7 px-5 text-start">
                    <div class="h-100 d-inline-flex align-items-center me-4">
                        <span class="fa fa-phone-alt me-2"></span>
                        <span></span>
                    </div>
                    <div class="h-100 d-inline-flex align-items-center">
                        <span class="far fa-envelope me-2"></span>
                        <span></span>
                    </div>
                </div>
                <div class="col-lg-5 px-5 text-end">
                    <div class="h-100 d-inline-flex align-items-center mx-n2">

                        <a>|</a>
                        <a class="btn btn-link text-light" href="">Log-in</a>
                        <a>|</a>
                        <a class="btn btn-link text-light" href="">Regist Here</a>
                        <a>|</a>

                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->

        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
            <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h1 class="m-0">WePet!!!</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse"
                data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="index.html" class="nav-item nav-link active">Home</a>
                    <a href="about.html" class="nav-item nav-link">About</a>
                    <a href="service.html" class="nav-item nav-link">Services</a>
                    <a href="project.html" class="nav-item nav-link">Projects</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">TEST</a>
                        <div class="dropdown-menu bg-light m-0">
                            <a href="feature.html" class="dropdown-item">Features</a>
                            <a href="quote.html" class="dropdown-item">Free Quote</a>
                            <a href="team.html" class="dropdown-item">Our Team</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Page</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu bg-light m-0">
                            <a href="feature.html" class="dropdown-item">Features</a>
                            <a href="quote.html" class="dropdown-item">Free Quote</a>
                            <a href="team.html" class="dropdown-item">Our Team</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Page</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <a href="" class="btn btn-primary py-4 px-lg-4 rounded-0 d-none d-lg-block">Get A Quote<i
                        class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->





        <!-- Body -->
        <a class="skip-link sr-only" href="#skip-target">Skip to content</a>

        <div class="page-flex">
            <!--  Sidebar Start -->

            <aside class="sidebar">
                <div class="sidebar-start">
                    <div class="sidebar-head">
                        <a href="/" class="logo-wrapper" title="Home">
                            <span class="sr-only">Home</span>
                            <span class="icon logo" aria-hidden="true"></span>
                            <div class="logo-text">
                                <span class="logo-title">Elegant</span>
                                <span class="logo-subtitle">Dashboard</span>
                            </div>

                        </a>
                        <button class="sidebar-toggle transparent-btn" title="Menu" type="button">
                            <span class="sr-only">Toggle menu</span>
                            <span class="icon menu-toggle" aria-hidden="true"></span>
                        </button>
                    </div>
                    <div class="sidebar-body">
                        <ul class="sidebar-body-menu">
                            <li>
                                <a class="active" href="/"><span class="icon home"
                                        aria-hidden="true"></span>Dashboard</a>
                            </li>
                            <li>
                                <a class="show-cat-btn" href="##">
                                    <span class="icon document" aria-hidden="true"></span>Posts
                                    <span class="category__btn transparent-btn" title="Open list">
                                        <span class="sr-only">Open list</span>
                                        <span class="icon arrow-down" aria-hidden="true"></span>
                                    </span>
                                </a>
                                <ul class="cat-sub-menu">
                                    <li>
                                        <a href="posts.html">All Posts</a>
                                    </li>
                                    <li>
                                        <a href="new-post.html">Add new post</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="show-cat-btn" href="##">
                                    <span class="icon folder" aria-hidden="true"></span>Categories
                                    <span class="category__btn transparent-btn" title="Open list">
                                        <span class="sr-only">Open list</span>
                                        <span class="icon arrow-down" aria-hidden="true"></span>
                                    </span>
                                </a>
                                <ul class="cat-sub-menu">
                                    <li>
                                        <a href="categories.html">All categories</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="show-cat-btn" href="##">
                                    <span class="icon image" aria-hidden="true"></span>Media
                                    <span class="category__btn transparent-btn" title="Open list">
                                        <span class="sr-only">Open list</span>
                                        <span class="icon arrow-down" aria-hidden="true"></span>
                                    </span>
                                </a>
                                <ul class="cat-sub-menu">
                                    <li>
                                        <a href="media-01.html">Media-01</a>
                                    </li>
                                    <li>
                                        <a href="media-02.html">Media-02</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="show-cat-btn" href="##">
                                    <span class="icon paper" aria-hidden="true"></span>Pages
                                    <span class="category__btn transparent-btn" title="Open list">
                                        <span class="sr-only">Open list</span>
                                        <span class="icon arrow-down" aria-hidden="true"></span>
                                    </span>
                                </a>
                                <ul class="cat-sub-menu">
                                    <li>
                                        <a href="pages.html">All pages</a>
                                    </li>
                                    <li>
                                        <a href="new-page.html">Add new page</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="comments.html">
                                    <span class="icon message" aria-hidden="true"></span>
                                    Comments
                                </a>
                                <span class="msg-counter">7</span>
                            </li>
                        </ul>
                        <span class="system-menu__title">system</span>
                        <ul class="sidebar-body-menu">


                        </ul>
                    </div>
                </div>
                <div class="sidebar-footer">

                </div>
            </aside>

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
                                <th width="6%">No</th>
                                <th width="6%">소분류</th>
                                <th width="64%"></th>
                                <th width="6%">작성자</th>
                                <th width="6%">작성일</th>
                                <th width="6%">조회수</th>
                                <th width="6%">추천</th>
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


                <!-- Copyright Start -->
                <div class="container m-3">
                    <div class="container-fluid copyright py-4">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                                    &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved.
                                </div>
                                <div class="col-md-6 text-center text-md-end">
                                    Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                                    Distributed By <a href="https://themewagon.com">ThemeWagon</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Copyright End -->


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
						tag = tag+"<td>"+11+"</td>"
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
					
					
					
					$("#bt_reco").click(function(){
						alert("추천했어?");
					});
                    $("#bt_del").click(function(){
						$("#remove").click();
					});
                    $("#bt_test").click(function(){
						
					if($("#card-body").css("display")=="none"){
						$("#collapse").click();
						
					};

                   

						
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
                   		delBoard();
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


    </body>

    </html>