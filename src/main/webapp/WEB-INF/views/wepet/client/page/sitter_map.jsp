<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
  <head>
	<!-- Header Start -->
	<%-- <%@ include file="../inc/gardener/inc/header_link.jsp"%> 이거 땜에 date 안먹어서 주석처리--%>
	<!-- Header End -->
	
	<!--  sidebar-inc-->
	<%@ include file="../inc/sneat/sneat_header_link.jsp"%>
	<!--  sidebar-inc-->

	<!-- Topbar Start 맨 윗칸 전화모양-->
	<%@ include file="../inc/gardener/inc/topbar_link.jsp"%>
	<!-- Topbar End -->

	<!--  sidebar-inc-->
	<%@ include file="../inc/sneat/sneat_header_link2.jsp"%>
	<!--  sidebar-inc-->
	
	<!-- Navbar Start 카테고리부분-->
	<%@ include file="../inc/gardener/inc/navbar_link.jsp"%>
	<!-- Navbar End -->
	
<style type="text/css">
/* 
 * Always set the map height explicitly to define the size of the div element
 * that contains the map. 
 */
#map {
display:inline-block;
 width:100%;
  height: 100%;
}

/* 
 * Optional: Makes the sample page fill the window. 
 */
html,
body {

  height: 100%;
  margin: 0;
  padding: 0;
}

input[type=text] {
  background-color: #fff;
  border: 0;
  border-radius: 2px;
  box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
  margin: 10px;
  padding: 0 0.5em;
  font: 400 18px Roboto, Arial, sans-serif;
  overflow: hidden;
  line-height: 40px;
  margin-right: 0;
  min-width: 25%;
}

input[type=button] {
  background-color: #fff;
  border: 0;
  border-radius: 2px;
  box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
  margin: 10px;
  padding: 0 0.5em;
  font: 400 18px Roboto, Arial, sans-serif;
  overflow: hidden;
  height: 40px;
  cursor: pointer;
  margin-left: 5px;
}
input[type=button]:hover {
  background: rgb(235, 235, 235);
}
input[type=button].button-primary {
  background-color: #1a73e8;
  color: white;
}
input[type=button].button-primary:hover {
  background-color: #1765cc;
}
input[type=button].button-secondary {
  background-color: white;
  color: #1a73e8;
}
input[type=button].button-secondary:hover {
  background-color: #d2e3fc;
}

#response-container {
  background-color: #fff;
  border: 0;
  border-radius: 2px;
  box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
  margin: 10px;
  padding: 0 0.5em;
  font: 400 18px Roboto, Arial, sans-serif;
  overflow: hidden;
  overflow: auto;
  max-height: 50%;
  max-width: 90%;
  background-color: rgba(255, 255, 255, 0.95);
  font-size: small;
}

#instructions {
  background-color: #fff;
  border: 0;
  border-radius: 2px;
  box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
  margin: 10px;
  padding: 0 0.5em;
  font: 400 18px Roboto, Arial, sans-serif;
  overflow: hidden;
  padding: 1rem;
  font-size: medium;
}

</style>
 
 <script type="module">
let map;
let marker;
let geocoder;
let responseDiv;
let response;

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 15,
    center: { lat: 37.5564873, lng: 126.9451983 },
    mapTypeControl: false,
  });
  geocoder = new google.maps.Geocoder();

  const inputText = document.createElement("input");

  inputText.type = "text";
  inputText.placeholder = "장소를 입력하세요";

  const submitButton = document.createElement("input");

  submitButton.type = "button";
  submitButton.value = "검색";
  submitButton.classList.add("button", "button-primary");

  const clearButton = document.createElement("input");

  clearButton.type = "button";
  clearButton.value = "저장";
  clearButton.classList.add("button", "button-secondary");
  response = document.createElement("pre");
  response.id = "response";
  response.innerText = "";
  responseDiv = document.createElement("div");
  responseDiv.id = "response-container";
  responseDiv.appendChild(response);

  const instructionsElement = document.createElement("p");

  instructionsElement.id = "instructions";
/*  instructionsElement.innerHTML =*/
/*    "<strong>Instructions</strong>: Enter an address in the textbox to geocode or click on the map to reverse geocode.";*/
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(inputText);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(submitButton);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(clearButton);
  map.controls[google.maps.ControlPosition.LEFT_TOP].push(instructionsElement);
  map.controls[google.maps.ControlPosition.LEFT_TOP].push(responseDiv);
  marker = new google.maps.Marker({
    map,
  });
  map.addListener("click", (e) => {
    geocode({ location: e.latLng });
  });
  submitButton.addEventListener("click", () =>
    geocode({ address: inputText.value })
  );
  clearButton.addEventListener("click", () => {
    clear();
  });
  clear();
}

function clear() {
  marker.setMap(null);
  responseDiv.style.display = "none";
}

function geocode(request) {
  clear();
  geocoder
    .geocode(request)
    .then((result) => {
      const { results } = result;

      map.setCenter(results[0].geometry.location);
      marker.setPosition(results[0].geometry.location);
      marker.setMap(map);
      responseDiv.style.display = "block";
      response.innerText = JSON.stringify(result, null, 2);
      return results;
    })
    .catch((e) => {
      alert("Geocode was not successful for the following reason: " + e);
    });
}

window.initMap = initMap;
 </script>

  </head>
<body>
  <div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
      <!-- Menu -->
      <%@ include file="../inc/sneat/sneat_navbar_link2.jsp" %>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">내 프로필 /</span> 지역설정 </h4>
              <hr class="container-m-nx border-light mt-5">
              <div class="row" style="height:90%; width:100%%;">
                <div id="map"></div>
              </div>

            </div>
          </div>
        </div>
    </div>
  </div>
  <!-- 
  The `defer` attribute causes the callback to execute after the full HTML
  document has been parsed. For non-blocking uses, avoiding race conditions,
  and consistent behavior across browsers, consider loading using Promises.
  See https://developers.google.com/maps/documentation/javascript/load-maps-js-api
  for more information.
  -->
  <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyApu1Ljx9Mzgik1TrenZNdQG3vSLXnJgI4&callback=initMap&v=weekly"
    defer></script>
</body>
</html>
