<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TextMiningOn Web</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/index.css">
</head>

<body>
	<section class="background">
		<div class="header"></div>
		<h1>Text Mining on Web</h1>
		<h1>크롤링 할 URL을 넣어주세요!</h1>
		<div class="form">
			<input type="text" class="text-form" name="URL">
			<input type="button" value="입력" class="SendURL">
		</div>
		<div class="content">
			<h1 class="inside-text">이 곳에 정보가 표시됩니다.</h1>
		</div>
	</section>
</body>
<script src="/script/mining.js"></script>
</html>