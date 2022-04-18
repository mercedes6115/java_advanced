<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-info bg-info aria-label=Tenth navbar">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">e-MALL</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">바로가기>></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">찾아오시는길</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">FAQ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">관리자</a>
        </li>    
      </ul>
    </div>
  </div>
</nav>

<div id="map" style="width:50%;height:250px;"></div>
<p><em>찾아오시는길</em></p> 
<p id="result"></p>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35966c9a479a585c8f16bf626d40ace1"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.500061, 127.035521), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {           
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng;    
    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    message += '경도는 ' + latlng.getLng() + ' 입니다';    
    var resultDiv = document.getElementById('result'); 
    resultDiv.innerHTML = message;   
});
</script>	

</table>