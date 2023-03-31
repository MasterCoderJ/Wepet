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

	<div class="container justify-content-center">
	
	
	  <!--  Sidebar End-->
            <div class="container mt-3">
                <form id="form1">

                    <div class="mb-3">

                        <div class="row">
                            <div class="col-2">
                                <select class="form-select" id="cat2" name="cat2">
                                    
                                </select>
                            </div>
                            <div class="col-10">
                                <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요" name="title">
                            </div>
                        </div>
                    </div>
                    <div>
                        <textarea id="summernote" name="content"></textarea>
                    </div>
                 	
                    <button type="button" class="btn btn-primary m-3 justify-content-end" id="bt_write">글 등록</button>
                 
                   
                </form>





                <!-- Footer Start -->

                <!-- Footer End -->


              


                <!--Summer Note script-->
                <script src="/resources/summernote/js/summernote-lite.js"></script>
                <script src="/resources/summernote/js/lang/summernote-ko-KR.js"></script>

                <link rel="Stylesheet" href="/resources/summernote/css/summernote-lite.css">

                <script type="text/javascript">
                let cat2 ;
                    function getCat2(){
                        $.ajax({
                            method: "GET",
                            url: "/getCat2",
							success:function(data,status,xhr){
								cat2= JSON.parse(data);

                                for ( var i = 0; i < cat2.length; i++ ) {
                                    $( '#cat2' ).append( '<option value='+cat2[i].community_cat2_idx +'>' + cat2[ i ].cat2 + '</option>' );
                                }
							}
                        });

                    }

                   
                    function write(){
                    	let form1 =  $("#form1").serialize();
                           console.log(form1);
                        $("#form1").attr({
							data:form1,
                            action:"/post",
                            method:"post"
                            


                        });
                        $("#form1").submit();
                    };


                    $(function () {
                    	getCat2();
                    	 $('#bt_write').click(function(){
                           
                         	write();
                         });

                        $('#summernote').summernote({
                            height: 300,                 // 에디터 높이
                            minHeight: null,             // 최소 높이
                            maxHeight: null,             // 최대 높이
                            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                            lang: "ko-KR",					// 한글 설정

                            placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
                            
                            callbacks : { 
                            	onImageUpload : function(files, editor, welEditable) {
		                            // 파일 업로드(다중업로드를 위해 반복문 사용)
		                            for (var i = files.length - 1; i >= 0; i--) {
		                           		uploadSummernoteImageFile(files[i],this);
                            		}
                            	}
                            }
                        });
                      
                        
                    });
                        function uploadSummernoteImageFile(file, el) {
                        	
                			data = new FormData();
                			data.append("file", file);
                			$.ajax({
                				data : data,
                				type : "POST",
                				url : "/uploadSummernoteImageFileforCommunity",
                				contentType : false,
                				enctype : 'multipart/form-data',
                				processData : false,
                				success : function(data) {
                					console.log(data);
                					$(el).summernote('editor.insertImage',data.url);
                                    $(el).summernote('pasteHTML',"<br>");
                				}
                			});
                		}
                </script>
	
	
	
	


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