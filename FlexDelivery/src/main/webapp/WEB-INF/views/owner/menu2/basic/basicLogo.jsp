<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>



<form novalidate="" class="dialog on lg ">
	<div class="header">
		<div class="header-close">
			<button class="close" type="button">나가기</button>
		</div>
		<div class="header-title">
			<h3>가게 로고 변경</h3>
		</div>
		<div class="header-hint"></div>
	</div>
	<div class="wrap">
		<a class="content-begin"></a>
		<div class="content">
			<div class="form-group ">
				<h5 class="form-label">로고 이미지</h5>
				<div class="uploader-wrapper ">
					<span><input type="file" multiple=""
						accept=".jpg, .jpeg, .png, .pdf, .zip"
						style="position: absolute; left: -1000px; visibility: hidden;"><span><button
								type="button" class="button uploader-btn  small text">
								<i class="icon icon-plus"></i>
								<div>이미지 (0/5)</div>
							</button></span></span>
				</div>
				<ul class="bullet-ul small muted">
					<li>15MB 이하, JPG, PNG, ZIP, PDF 형식의 파일만 등록할 수 있습니다. (최대 5개까지
						첨부가능)</li>
				</ul>
			</div>
			<div class="form-group ">
				<h5 class="form-label">요청 내용</h5>
				<div class="form-control-wrap">
					<div class="form-control ">
						<div class="textarea-container ">
							<textarea data-component="[object Object]" class="" rows="3"
								required="" maxlength="500" placeholder=""></textarea>
							<span class="text-count">500</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<button type="submit" class="button popup primary">요청</button>
	</div>
</form>