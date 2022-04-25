<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bootstrap 5 Login Form Example</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="signin.css" rel="stylesheet">
    </head>
    
 

    <body>
    
       <script type="text/javascript">
    function fn_submit() {
    	var f2 = document.frm2;
    	if(f2.aid.value =="") {
    		alert("아이디를 입력해주세요.");
    		f.aid.focus();
    		return false;
    	}
    	if(f.apw.value =="") {
    		alert("비밀번호를 입력해주세요.");
    		f.apw.focus();
    		return false;
    	}
    	f.submit();
    }
    </script>
    
    <!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
		
        <div class="container-fluid vh-100" style="margin-top:100px">
            <div class="" style="margin-top:150px">
                <div class="rounded d-flex justify-content-center">
                    <div class="col-md-4 col-sm-12 shadow-lg p-5 bg-light">
                        <div class="text-center">
                            <h3 class="text-warning">관리자 로그인</h3>
                        </div>
                        <form name = "frm2" action="../admin/adminlogindb.jsp" method="post">
                            <div class="p-4">
                                <div class="input-group mb-3">
                                    <span class="input-group-text bg-warning"><i
                                            class="bi bi-person-plus-fill text-white"></i></span>
                                    <input type="text" name="aid" class="form-control" placeholder="아이디" required>
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text bg-warning"><i
                                            class="bi bi-key-fill text-white"></i></span>
                                    <input type="password" name="apw" class="form-control" placeholder="비밀번호" required>
                                </div>
                               
                                <button class="btn btn-warning text-center mt-2" type="submit" onclick="fn_submit(); return false;">
                                    관리자로그인
                                </button>
                                                                
                            </div>
                        </form>
                        <div align = "center">
                        <a href="../usertest/login.jsp"><button class="btn btn-primary text-center mt-2" type="submit">
                                
                                    회원로그인
                                </button></a>
                                </div>
                               
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