<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  
    <meta charset="UTF-8">
    <title>글쓰기</title>
<!— 부스트랩 css  —>
  <!-- include libraries(jQuery, bootstrap) -->
    <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- include summernote css/js-->
    <link href="summernote-bs5.css" rel="stylesheet">
    <script src="summernote-bs5.js"></script>
  </head>
  
<body>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> 
<div class = "container bg-light shadow mx-auto mt-5 p-5 w-75">
<%@ include file = "/_header.jsp" %>

<form action="www.jsp" name= "editordata" method ="post">
    <div id="summernote"></div>
    <script>
      $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 5',
        tabsize: 2,
        height: 100
      });
    </script>
    <input type="submit" value="전송">
</form>




<%@ include file = "/_footer.jsp" %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>