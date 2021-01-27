<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../ownerInc/top.jsp" %>


 
<style>

	a.event{
		color:black;	
	}
	
	a.event:hover{
		color: rgb(182,73,197);
		text-decoration: none;
	}
	
	
	

</style>
	<!--  QQQ. 을 검색해서 수정부탁드려요 -->
    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
      
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img " style="background-image: url('https://i.imgur.com/tGBGXft.jpg'); background-size:cover; height:500px;">
                <div class="container h-80">
                    <div class="row h-80 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <!-- <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">lifestyle</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Take a look at last night’s party!</a></h2>
                     -->        </div>
                        </div>
                    </div>
                </div>
            </div>
         
         
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image :url('https://cdn.clien.net/web/api/file/F01/6833392/58fd21123b167e.jpg'); background-size:cover;  height:500px;">
                <div class="container h-80">
                    <div class="row h-80 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                             <!--    <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">lifestyle</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Take a look at last night’s party!</a></h2>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img " style=" height:500px; background-image: url('https://i.imgur.com/zU9sTZJ.jpg'); background-size:cover;">
                <div class="container h-80">
                    <div class="row h-80 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <!-- <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">lifestyle</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Take a look at last night’s party!</a></h2>
                            --> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->

        
		<!-- QQQ. 아래의 li 부분에 공지사하응로 foreach 돌려주세요 , href 안에 공지사항 번호넣어서 보내주세ㅛㅇ-->
        <div class="container" >
       
          <div class="row">
                <div class="col-12 col-lg-9" style="padding-top:50px; ">
                <!-- 메인 공지 부분 -->
               <article id="mainNotice">
	          	 <c:import url="/owner/ownerInc/ownerMainNotice.do"></c:import>
	           </article>
	          
	          
			 <div>
	              <hr style="border: 1px 1solid; border-color: gray;" >
	         </div>	

					
			
		

		
			<!-- 사장님 꿀팁 부분 -->		
			  <!-- 메인 공지 부분 -->
               <article id="mainNotice">
	          	 <c:import url="/owner/ownerInc/ownerMainHoneyTip.do"></c:import>
	           </article>
	          		
				
					<!-- 공지와 사장님 나누는 줄  -->
		 		<div style="margin-top:0px; margin-bottom:10px;">
	          	   <div class="col-12 col-md-11">
	          		 <hr style="border: 1px 1solid; border-color: gray; " >
	         	   </div>
	          	    <div class="col-12 col-md-11"></div>
		 	    </div>	
					
						

                    <!-- Single Blog Area  -->
                 
 			<!-- 이벤트부분 -->
 				 <article id="mainEvent">
	          	 	<c:import url="/owner/ownerInc/ownerMainEvent.do"></c:import>
                 </article>
                 
                 
                 
                 
                 
                 
                    <!-- Load More -->
                    <div class=" mt-100 wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1000ms">
                        <a href="#" ></a>
                    </div>
                </div>

                <!-- ##### Sidebar Area ##### -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="post-sidebar-area">
						  <!-- Widget Area -->
                  
             
                <!-- 로그인 , 입점, 내점포 버튼 부분 -->
                
                <article id="login">
               		 <c:import url="/owner/ownerInc/loginView.do"></c:import>
                </article>
                
                
                

                       <!-- Widget Area -->
                       <div class="sidebar-widget-area" style="text-align: center;  margin-bottom:10px;">
                       	<div class="row">
                       		<div class="col-12 col-md-4"></div>
                       		<div class="col-12 col-md-4 pl-0">
                            	<h5 class="title" style="margin-bottom:20px; background-color:rgb(228,193,240); color:white; " >FLEX TIME</h5>
                          	</div>
                           	<div class="col-12 col-md-4"></div>
                     	</div>
                     	
                     	 <div class="row ml-2" >
                           	<div class="col-12 col-md-10">
                            	<a href="#"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA4MjZfMTY2%2FMDAxNTk4NDE1Mzc0OTQ1.aPq6qOIMyi2Qg2hAceeIagADYAXlcrrni_IYTYwjbOcg.4aA4eXV-00Rpndur7X-Ixk0skG4LeM7yQhxg2uVH4Aog.GIF.dloere4%2F1598415371805.gif&type=sc960_832_gif" alt=""></a>
                       		</div>
                       		
                       		<div  class="col-12 col-md-10" style="margin-top:10px;">
                       			<p>저희 플렉스 광고는 믿음직한 광고입니다 <br>다들 광고하나 사주세요</p>
							</div>
                        </div>
                       </div>
                       <br>
                      
                       <div class="sidebar-widget-area" style="margin-bottom:10px; text-align: center;">
                       	<div class="row" >
                       		<div class="col-12 col-sm-4"></div>
                       		<div class="col-12 col-sm-4 pl-0">
                            	<h5 class="title" style=" margin-bottom:20px; background-color:rgb(228,193,240); color:white; " >OPEN TIME</h5>
                          	</div>
                          	<br>
                           	<div class="col-12 col-sm-4"></div>
                         </div>
                         
                         
                         <div class="row ml-2" > 
                            <div class="col-12 col-sm-10">
                            	<a href="#"><img src="https://blog.kakaocdn.net/dn/dqh4DR/btqEkMRGLJA/kg9G5hB2nR8Xk9d5zZJIok/img.gif" alt="유빈"></a>
                       		</div>
 
                       		<div class="col-12 col-sm-10"style="margin-top:10px; " >
                       			<p  >다른 사이트에서 광고 사지마<br> 오픈리스트 사요</p>
                       		</div>	
					
                        </div>
                       </div>
					<div >
                      		 	<hr style="border: 1px 1solid; border-color: gray;" >
                       </div>
					<br>
					
					
					
					
					
					
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <h5 class="title">이달의 점포</h5>
							<!-- QQQ.스토어 선택하는 곳으로 가주세요 -->
                            <div class="widget-content">

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/imgs/flexHyuna.jpg" style="height: 90px; border-radius: 20px; width: 90px;" alt="현아">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">현아 </a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">현아하게</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/imgs/testS.jpg" style="height: 90px;  width: 90px; border-radius: 20px;" alt="화난스누피">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">스누피</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">스누피의 하루</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVaqwzBAs5EoFftJ4G5u13gGmSDHQ_K5epiA&usqp=CAU"  style="height: 90px;  border-radius: 20px; width: 90px;" alt="조승우">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">타짜</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">고니곤이</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmYcd4VxUYaFNLKYccgploJWUy8xLPwoChyA&usqp=CAU" style="height: 90px; border-radius: 20px; width: 90px;" alt="공효진">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">공효진</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">효진스토어</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

  
 	  <br>
 	  <br>


    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/active.js"></script>


<%@ include file="../ownerInc/bottom.jsp" %>
