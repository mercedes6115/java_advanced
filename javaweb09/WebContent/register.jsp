<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 작성</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



<div class = "container bg-warning shadow mx-auto mt-5 p-5 w-75">

   <form action="add_list.jsp" method="POST">


      <div class="mb-3">
         <label for="exampleFormControlInput1" class="form-label">사원번호</label>
         <input type="text" name="ID" class="form-control" placeholder="사원 번호">
      </div>
      <div class="mb-3">
         <label for="exampleFormControlInput1" class="form-label">이름</label>
         <input name="name" class="form-control">
      </div>
      <div class="mb-3">
         <label for="exampleFormControlInput1" class="form-label">부서</label>
         <input name="dept" class="form-control">
      </div>
       <div class="mb-3">
         <input type="submit" value="방명록 등록">
      </div>
      
      


   </form>
   </div>
   
   <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   
</body>
</html>