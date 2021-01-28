
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

<!-- 이건 진짜 뷰만 만듬.. 시간없어서.. ㅜㅜ  -->


<!-- 창 띄우기 -->
	<script type="text/javascript">
	
	
			
			function goDetail(no){
				var windowW = 500;  // 창의 가로 길이
			       var windowH = 700;  // 창의 세로 길이
			       var left = Math.ceil((window.screen.width - windowW)/2);
			       var top = Math.ceil((window.screen.height - windowH)/2);
			       
			       var url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuDetail.do?menuNo="+no;
			       
				window.open(url,"메뉴 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
				event.preventDefault();
			}
			
					
			
			$(function(){
				$('.btMainMenuChange').click(function(){
					
					var url='<c:url value="/owner/menu2/foodmenu/menuMain.do"/>';
					
					if($(this).attr('id')=='btNowMenu'){
						url='<c:url value="/owner/menu2/foodmenu/menuMain.do"/>';
					}else if($(this).attr('id')=='btMenuChange'){
						url='<c:url value="/owner/menu2/foodmenu/menuGroup.do"/>';				
					}else if($(this).attr('id')=='btOptionChange'){
						url='<c:url value="/owner/menu2/foodmenu/menuOption.do"/>';
					}else if($(this).attr('id')=='btMainMenu'){
						url='<c:url value="/owner/menu2/foodmenu/signatureMenu.do"/>';
					}
					
					location.href=url;
				});
				
			});  
		
			
			
			$(function(){
				$('.btmenu').click(function(){
					
					var menuNo = $(this).attr('value');
					var url="", title="";

					var popupWidth = 0; //띄울 창 가로크기
					var popupHeight = 0;
					
					if($(this).attr('name')=='menuEdit'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceEdit.do?menuNo="+menuNo;
						title="메뉴 수정";
						popupWidth=500;
						popupHeight=600;
					}else if($(this).attr('name')=='menuDelete'){
						if(confirm(menuNo+"을 삭제하시겠습니까?")){
							var sMGroupNo = ${sMGroupNo};
							url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceDelete.do?menuNo="+menuNo+"&sMGroupNo="+sMGroupNo;
							location.href=url;
							return false;
						}else{
							self.close();
						}
						
					
					}else if($(this).attr('name')=='menuWrite'){
						var sMGroupNo=${sMGroupNo};
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceWrite.do?sMGroupNo="+sMGroupNo;
						title="메뉴 등록";
						popupWidth=500;
						popupHeight=600;
					}
					
					window.screen.width //현재 윈도우창의 가로크기를 가져옴
					window.screen.height //세로크기 가져옴
					
					var popupX = (window.screen.width / 2) - (popupWidth /2);
					var popupY = (window.screen.height / 2) - (popupHeight /2);
					
					window.open(
						url, 
						title, 
						'toolbar=no, menubar=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
					
					/* location.href=url; */
				});
				
			});  
		
		</script>
	
		<!-- 메뉴 버튼 -->
		<br>
			 <div class="row mt-3">
			  		<div class="col-md-2 col-sm-12"></div>
			  		<div class="col-md-8 col-sm-12">
				  		 <div class="text-right">
		                	 <button id="btNowMenu" class="btn btn-primary btMainMenuChange" >현재메뉴</button>
		                	 <button id="btMenuChange" class="btn btn-primary btMainMenuChange" >메뉴편집</button>
		                	 <button id="btOptionChange" class="btn btn-primary btMainMenuChange " >옵션편집</button>
		                	 <button id="btMainMenu" class="btn btn-primary btMainMenuChange" >대표메뉴</button>
	                	 </div>
		            </div>
                    <div class="col-md-2 col-sm-12"></div>
			  </div>
	
		
			 
			 <br>
			<br>
			<br>
			<div class="text-center">
				<h2>메뉴 편집</h2>
			</div>		
			<br>
			<br>
			

				<div class="row">
				
				
					  <div class="col-md-1 col-sm-12"></div>
					  <div class="col-md-10 col-sm-12">
					  <div class="text-right">
						  <button class="btn btn-warning p-2 btmenu"  name="menuWrite"
						  		style="width:100px; margin-right:50px; margin-bottom:10px;" >등록</button>
					  </div>
					    </div>	
					  <div class="col-md-1 col-sm-12"></div>
					  
					 
					  <div class="col-md-1 col-sm-12"></div>
					  <div class="col-12 col-md-10">
							<div class="row">
								<c:if test="${!empty list }">
									<c:forEach var="vo" items="${list}" varStatus="status">
											<div class="col-12 col-md-4 p-4">
										  	  	<div class="card h-100"  >
											      <!-- 이미지 띄우기 -->
												   <!-- 나중에 파일 업로드 후에 아래 주석을 풀어주세요.. 지금은 이미지 확인차.. -->
												  	<%-- <img src
														="<c:url value='/resources/imgs/ownerMenu_images/${vo.menuImg}'/>" 
														alt="${vo.menuImg }" class="card-img-top" alt ="${vo.menuImg }"style="height:150px;">  --%>
													
												      	  <%--<img src="${vo.menuImg}" class="card-img-top"  alt ="${vo.menuName }"  style="height:100px;"> --%>
															<c:if test="${fn:substring(vo.menuImg, 0,4)=='http'}">
										      					<img src="${vo.menuImg}" class="card-img-top"  style="height:120px;"
																 alt="${vo.menuName }">
															</c:if>
															<c:if test="${fn:substring(vo.menuImg, 0,4)!='http' and (!empty vo.menuImg) }">
																<img src
																="<c:url value='/resources/imgs/ownerMenu_images/${vo.menuImg}'/>" 
																alt="${vo.menuName }" class="card-img-top" style="height:120px;">
															</c:if>
												        <!-- 내용띄우기 -->
												     	<div class="card-body text-center" style="height:130px;">
												       		 <div class="card-title">
											       		 		<a class="event" onclick="goDetail(${vo.menuNo})" href="#"   style="font-size:15px;">
												       		 		<c:if test="${fn:length(vo.menuName)>=12}">
																		${fn:substring(vo.menuName, 0,12) } ..
																	</c:if>
																	<c:if test="${fn:length(vo.menuName)<12}">				
																		${vo.menuName}
																	</c:if>
																</a>
															</div>
															<div class="text-center">
												        		<p class="card-text"><span>${vo.menuPrice}원</span></p>
												        	</div>
												        	<br>
												        	<div class="text-center">
												        		<button class="btn btn-outline-dark p-2 btmenu" value="${vo.menuNo }" name="menuEdit" >수정</button>
											                	<button class="btn btn-outline-dark p-2 btmenu" value="${vo.menuNo }" name="menuDelete">삭제</button>
												     		</div>
												     	</div>
												    </div>
												 </div>
									 </c:forEach>
								  </c:if>
							   </div>  
						 	 </div>
						   <div class="col-md-1 col-sm-12"></div>
					   </div>   
								   
								   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   
				   <!-- 내용 -->

						<br>
		<br>
		<br>


 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

	