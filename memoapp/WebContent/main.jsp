<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemoApp</title>
</head>
<body>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<div class="container bg-light shadow mx-auto mt-5 p-5 w-55">	

	<form action="memoadddb.jsp" method="post">
	<div class="input-group mb-3">
  	<input type="text" name="mtitle" class="form-control" placeholder="Write a short title">
  	</div>
	<div class="input-group mb-3">
  	<input type="text" name= "mcon" class="form-control" placeholder="Write things you should do today">
  	</div>
  	<input type="submit" value="등록">
  	</form>
  	<br>
	<div class="card">
  	<div class="card-header">
    Personal MemoApp
  	</div>
  	<div class="card-body">
    <h5 class="card-title">Things to do</h5>
    <p class="card-text">Write things you should do today</p>
	<p class="card-text">Writing Time</p>
	<div class="form-check form-switch">
  	<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
  	<label class="form-check-label" for="flexSwitchCheckChecked">Check if you're done</label>
	</div>
  	</div>
	</div>		
</div>	

	
	
	
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>