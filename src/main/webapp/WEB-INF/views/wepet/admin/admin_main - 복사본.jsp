
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>어드민 메인 페이지</title>

<meta name="description" content="" />

<%@ include file="./inc/sneat/sneat_header_link.jsp"%>

  <!-- Vue.js ver2 -->
  <script src="https://cdn.jsdelivr.net/npm/vue@2.7.14/dist/vue.min.js"></script>  
<script type="text/javascript" src="/resources/js/Pager.js"></script>	
  <!-- inject:css -->
  <link rel="stylesheet" href="/resources/chart/css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="/resources/chart/vendors/css/vendor.bundle.base.css">

</head>

<body>
	<!-- navbar  -->
	<%@ include file="./inc/sneat/sneat_navbar_link.jsp"%>
	<!-- navbar end -->

	<!-- Layout container -->
	<div class="layout-page">
		<!-- Navbar -->

		<!-- 상단, 서치바 -->
		<%@ include file="./inc/sneat/sneat_searchbar_link.jsp"%>
		<!-- 서치바 End -->


          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">관리자 페이지/</span> 메인</h4>

              <!-- Basic Layout & Basic with Icons -->
              <div class="row">
          
          



<div class="col-md-9 col-lg-8 order-2 order-md-3 order-lg-2 mb-4">
                  <div class="card">
                    <div class="row row-bordered g-0">
                      <div class="col-md-8">
                        <h5 class="card-header m-0 me-2 pb-3">Total Revenue</h5>
                        <div id="totalRevenueChart" class="px-2" style="min-height: 315px;"><div id="apexcharts3fthe3ou" class="apexcharts-canvas apexcharts3fthe3ou apexcharts-theme-light" style="width: 511px; height: 300px;"><svg id="SvgjsSvg2088" width="511" height="300" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><foreignObject x="0" y="0" width="511" height="300"><div class="apexcharts-legend apexcharts-align-left apx-legend-position-top" xmlns="http://www.w3.org/1999/xhtml" style="right: 0px; position: absolute; left: 0px; top: 4px; max-height: 150px;"><div class="apexcharts-legend-series" rel="1" seriesname="2021" data:collapsed="false" style="margin: 2px 10px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(105, 108, 255) !important; color: rgb(105, 108, 255); height: 8px; width: 8px; left: -3px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="2021" data:collapsed="false" style="color: rgb(161, 172, 184); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">2021</span></div><div class="apexcharts-legend-series" rel="2" seriesname="2020" data:collapsed="false" style="margin: 2px 10px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(3, 195, 236) !important; color: rgb(3, 195, 236); height: 8px; width: 8px; left: -3px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="2020" data:collapsed="false" style="color: rgb(161, 172, 184); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">2020</span></div></div><style type="text/css">	
    	
      .apexcharts-legend {	
        display: flex;	
        overflow: auto;	
        padding: 0 10px;	
      }	
      .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {	
        flex-wrap: wrap	
      }	
      .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {	
        flex-direction: column;	
        bottom: 0;	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {	
        justify-content: flex-start;	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {	
        justify-content: center;  	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {	
        justify-content: flex-end;	
      }	
      .apexcharts-legend-series {	
        cursor: pointer;	
        line-height: normal;	
      }	
      .apexcharts-legend.apx-legend-position-bottom .apexcharts-legend-series, .apexcharts-legend.apx-legend-position-top .apexcharts-legend-series{	
        display: flex;	
        align-items: center;	
      }	
      .apexcharts-legend-text {	
        position: relative;	
        font-size: 14px;	
      }	
      .apexcharts-legend-text *, .apexcharts-legend-marker * {	
        pointer-events: none;	
      }	
      .apexcharts-legend-marker {	
        position: relative;	
        display: inline-block;	
        cursor: pointer;	
        margin-right: 3px;	
        border-style: solid;
      }	
      	
      .apexcharts-legend.apexcharts-align-right .apexcharts-legend-series, .apexcharts-legend.apexcharts-align-left .apexcharts-legend-series{	
        display: inline-block;	
      }	
      .apexcharts-legend-series.apexcharts-no-click {	
        cursor: auto;	
      }	
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {	
        display: none !important;	
      }	
      .apexcharts-inactive-legend {	
        opacity: 0.45;	
      }</style></foreignObject><g id="SvgjsG2090" class="apexcharts-inner apexcharts-graphical" transform="translate(53.796875, 51)"><defs id="SvgjsDefs2089"><linearGradient id="SvgjsLinearGradient2094" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2095" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop2096" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop2097" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMask3fthe3ou"><rect id="SvgjsRect2099" width="447.203125" height="223.73" x="-5" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask3fthe3ou"></clipPath><clipPath id="nonForecastMask3fthe3ou"></clipPath><clipPath id="gridRectMarkerMask3fthe3ou"><rect id="SvgjsRect2100" width="441.203125" height="221.73" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect2098" width="21.86015625" height="217.73" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient2094)" class="apexcharts-xcrosshairs" y2="217.73" filter="none" fill-opacity="0.9"></rect><g id="SvgjsG2120" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2121" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText2123" font-family="Helvetica, Arial, sans-serif" x="31.228794642857142" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2124">Jan</tspan><title>Jan</title></text><text id="SvgjsText2126" font-family="Helvetica, Arial, sans-serif" x="93.68638392857143" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2127">Feb</tspan><title>Feb</title></text><text id="SvgjsText2129" font-family="Helvetica, Arial, sans-serif" x="156.14397321428572" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2130">Mar</tspan><title>Mar</title></text><text id="SvgjsText2132" font-family="Helvetica, Arial, sans-serif" x="218.6015625" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2133">Apr</tspan><title>Apr</title></text><text id="SvgjsText2135" font-family="Helvetica, Arial, sans-serif" x="281.0591517857143" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2136">May</tspan><title>May</title></text><text id="SvgjsText2138" font-family="Helvetica, Arial, sans-serif" x="343.51674107142856" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2139">Jun</tspan><title>Jun</title></text><text id="SvgjsText2141" font-family="Helvetica, Arial, sans-serif" x="405.97433035714283" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2142">Jul</tspan><title>Jul</title></text></g></g><g id="SvgjsG2157" class="apexcharts-grid"><g id="SvgjsG2158" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine2160" x1="0" y1="0" x2="437.203125" y2="0" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2161" x1="0" y1="43.546" x2="437.203125" y2="43.546" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2162" x1="0" y1="87.092" x2="437.203125" y2="87.092" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2163" x1="0" y1="130.638" x2="437.203125" y2="130.638" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2164" x1="0" y1="174.184" x2="437.203125" y2="174.184" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2165" x1="0" y1="217.73" x2="437.203125" y2="217.73" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2159" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine2167" x1="0" y1="217.73" x2="437.203125" y2="217.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2166" x1="0" y1="1" x2="0" y2="217.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2101" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG2102" class="apexcharts-series" seriesName="2021" rel="1" data:realIndex="0"><path id="SvgjsPath2104" d="M 20.298716517857144 120.638L 20.298716517857144 62.255200000000016Q 20.298716517857144 52.255200000000016 30.298716517857144 52.255200000000016L 26.158872767857147 52.255200000000016Q 36.15887276785715 52.255200000000016 36.15887276785715 62.255200000000016L 36.15887276785715 62.255200000000016L 36.15887276785715 120.638Q 36.15887276785715 130.638 26.158872767857147 130.638L 30.298716517857144 130.638Q 20.298716517857144 130.638 20.298716517857144 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 20.298716517857144 120.638L 20.298716517857144 62.255200000000016Q 20.298716517857144 52.255200000000016 30.298716517857144 52.255200000000016L 26.158872767857147 52.255200000000016Q 36.15887276785715 52.255200000000016 36.15887276785715 62.255200000000016L 36.15887276785715 62.255200000000016L 36.15887276785715 120.638Q 36.15887276785715 130.638 26.158872767857147 130.638L 30.298716517857144 130.638Q 20.298716517857144 130.638 20.298716517857144 120.638z" pathFrom="M 20.298716517857144 120.638L 20.298716517857144 120.638L 36.15887276785715 120.638L 36.15887276785715 120.638L 36.15887276785715 120.638L 36.15887276785715 120.638L 36.15887276785715 120.638L 20.298716517857144 120.638" cy="52.255200000000016" cx="79.75630580357142" j="0" val="18" barHeight="78.38279999999999" barWidth="21.86015625"></path><path id="SvgjsPath2105" d="M 82.75630580357142 120.638L 82.75630580357142 110.15580000000001Q 82.75630580357142 100.15580000000001 92.75630580357142 100.15580000000001L 88.61646205357142 100.15580000000001Q 98.61646205357142 100.15580000000001 98.61646205357142 110.15580000000001L 98.61646205357142 110.15580000000001L 98.61646205357142 120.638Q 98.61646205357142 130.638 88.61646205357142 130.638L 92.75630580357142 130.638Q 82.75630580357142 130.638 82.75630580357142 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 82.75630580357142 120.638L 82.75630580357142 110.15580000000001Q 82.75630580357142 100.15580000000001 92.75630580357142 100.15580000000001L 88.61646205357142 100.15580000000001Q 98.61646205357142 100.15580000000001 98.61646205357142 110.15580000000001L 98.61646205357142 110.15580000000001L 98.61646205357142 120.638Q 98.61646205357142 130.638 88.61646205357142 130.638L 92.75630580357142 130.638Q 82.75630580357142 130.638 82.75630580357142 120.638z" pathFrom="M 82.75630580357142 120.638L 82.75630580357142 120.638L 98.61646205357142 120.638L 98.61646205357142 120.638L 98.61646205357142 120.638L 98.61646205357142 120.638L 98.61646205357142 120.638L 82.75630580357142 120.638" cy="100.15580000000001" cx="142.2138950892857" j="1" val="7" barHeight="30.482199999999995" barWidth="21.86015625"></path><path id="SvgjsPath2106" d="M 145.2138950892857 120.638L 145.2138950892857 75.31900000000002Q 145.2138950892857 65.31900000000002 155.2138950892857 65.31900000000002L 151.0740513392857 65.31900000000002Q 161.0740513392857 65.31900000000002 161.0740513392857 75.31900000000002L 161.0740513392857 75.31900000000002L 161.0740513392857 120.638Q 161.0740513392857 130.638 151.0740513392857 130.638L 155.2138950892857 130.638Q 145.2138950892857 130.638 145.2138950892857 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 145.2138950892857 120.638L 145.2138950892857 75.31900000000002Q 145.2138950892857 65.31900000000002 155.2138950892857 65.31900000000002L 151.0740513392857 65.31900000000002Q 161.0740513392857 65.31900000000002 161.0740513392857 75.31900000000002L 161.0740513392857 75.31900000000002L 161.0740513392857 120.638Q 161.0740513392857 130.638 151.0740513392857 130.638L 155.2138950892857 130.638Q 145.2138950892857 130.638 145.2138950892857 120.638z" pathFrom="M 145.2138950892857 120.638L 145.2138950892857 120.638L 161.0740513392857 120.638L 161.0740513392857 120.638L 161.0740513392857 120.638L 161.0740513392857 120.638L 161.0740513392857 120.638L 145.2138950892857 120.638" cy="65.31900000000002" cx="204.67148437499998" j="2" val="15" barHeight="65.31899999999999" barWidth="21.86015625"></path><path id="SvgjsPath2107" d="M 207.67148437499998 120.638L 207.67148437499998 14.35460000000002Q 207.67148437499998 4.354600000000019 217.67148437499998 4.354600000000019L 213.53164062499997 4.354600000000019Q 223.53164062499997 4.354600000000019 223.53164062499997 14.35460000000002L 223.53164062499997 14.35460000000002L 223.53164062499997 120.638Q 223.53164062499997 130.638 213.53164062499997 130.638L 217.67148437499998 130.638Q 207.67148437499998 130.638 207.67148437499998 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 207.67148437499998 120.638L 207.67148437499998 14.35460000000002Q 207.67148437499998 4.354600000000019 217.67148437499998 4.354600000000019L 213.53164062499997 4.354600000000019Q 223.53164062499997 4.354600000000019 223.53164062499997 14.35460000000002L 223.53164062499997 14.35460000000002L 223.53164062499997 120.638Q 223.53164062499997 130.638 213.53164062499997 130.638L 217.67148437499998 130.638Q 207.67148437499998 130.638 207.67148437499998 120.638z" pathFrom="M 207.67148437499998 120.638L 207.67148437499998 120.638L 223.53164062499997 120.638L 223.53164062499997 120.638L 223.53164062499997 120.638L 223.53164062499997 120.638L 223.53164062499997 120.638L 207.67148437499998 120.638" cy="4.354600000000019" cx="267.12907366071425" j="3" val="29" barHeight="126.28339999999999" barWidth="21.86015625"></path><path id="SvgjsPath2108" d="M 270.12907366071425 120.638L 270.12907366071425 62.255200000000016Q 270.12907366071425 52.255200000000016 280.12907366071425 52.255200000000016L 275.98922991071424 52.255200000000016Q 285.98922991071424 52.255200000000016 285.98922991071424 62.255200000000016L 285.98922991071424 62.255200000000016L 285.98922991071424 120.638Q 285.98922991071424 130.638 275.98922991071424 130.638L 280.12907366071425 130.638Q 270.12907366071425 130.638 270.12907366071425 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 270.12907366071425 120.638L 270.12907366071425 62.255200000000016Q 270.12907366071425 52.255200000000016 280.12907366071425 52.255200000000016L 275.98922991071424 52.255200000000016Q 285.98922991071424 52.255200000000016 285.98922991071424 62.255200000000016L 285.98922991071424 62.255200000000016L 285.98922991071424 120.638Q 285.98922991071424 130.638 275.98922991071424 130.638L 280.12907366071425 130.638Q 270.12907366071425 130.638 270.12907366071425 120.638z" pathFrom="M 270.12907366071425 120.638L 270.12907366071425 120.638L 285.98922991071424 120.638L 285.98922991071424 120.638L 285.98922991071424 120.638L 285.98922991071424 120.638L 285.98922991071424 120.638L 270.12907366071425 120.638" cy="52.255200000000016" cx="329.58666294642853" j="4" val="18" barHeight="78.38279999999999" barWidth="21.86015625"></path><path id="SvgjsPath2109" d="M 332.58666294642853 120.638L 332.58666294642853 88.3828Q 332.58666294642853 78.3828 342.58666294642853 78.3828L 338.4468191964285 78.3828Q 348.4468191964285 78.3828 348.4468191964285 88.3828L 348.4468191964285 88.3828L 348.4468191964285 120.638Q 348.4468191964285 130.638 338.4468191964285 130.638L 342.58666294642853 130.638Q 332.58666294642853 130.638 332.58666294642853 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 332.58666294642853 120.638L 332.58666294642853 88.3828Q 332.58666294642853 78.3828 342.58666294642853 78.3828L 338.4468191964285 78.3828Q 348.4468191964285 78.3828 348.4468191964285 88.3828L 348.4468191964285 88.3828L 348.4468191964285 120.638Q 348.4468191964285 130.638 338.4468191964285 130.638L 342.58666294642853 130.638Q 332.58666294642853 130.638 332.58666294642853 120.638z" pathFrom="M 332.58666294642853 120.638L 332.58666294642853 120.638L 348.4468191964285 120.638L 348.4468191964285 120.638L 348.4468191964285 120.638L 348.4468191964285 120.638L 348.4468191964285 120.638L 332.58666294642853 120.638" cy="78.3828" cx="392.0442522321428" j="5" val="12" barHeight="52.255199999999995" barWidth="21.86015625"></path><path id="SvgjsPath2110" d="M 395.0442522321428 120.638L 395.0442522321428 101.44660000000002Q 395.0442522321428 91.44660000000002 405.0442522321428 91.44660000000002L 400.9044084821428 91.44660000000002Q 410.9044084821428 91.44660000000002 410.9044084821428 101.44660000000002L 410.9044084821428 101.44660000000002L 410.9044084821428 120.638Q 410.9044084821428 130.638 400.9044084821428 130.638L 405.0442522321428 130.638Q 395.0442522321428 130.638 395.0442522321428 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 395.0442522321428 120.638L 395.0442522321428 101.44660000000002Q 395.0442522321428 91.44660000000002 405.0442522321428 91.44660000000002L 400.9044084821428 91.44660000000002Q 410.9044084821428 91.44660000000002 410.9044084821428 101.44660000000002L 410.9044084821428 101.44660000000002L 410.9044084821428 120.638Q 410.9044084821428 130.638 400.9044084821428 130.638L 405.0442522321428 130.638Q 395.0442522321428 130.638 395.0442522321428 120.638z" pathFrom="M 395.0442522321428 120.638L 395.0442522321428 120.638L 410.9044084821428 120.638L 410.9044084821428 120.638L 410.9044084821428 120.638L 410.9044084821428 120.638L 410.9044084821428 120.638L 395.0442522321428 120.638" cy="91.44660000000002" cx="454.5018415178571" j="6" val="9" barHeight="39.191399999999994" barWidth="21.86015625"></path></g><g id="SvgjsG2111" class="apexcharts-series" seriesName="2020" rel="2" data:realIndex="1"><path id="SvgjsPath2113" d="M 20.298716517857144 150.638L 20.298716517857144 187.24779999999998Q 20.298716517857144 197.24779999999998 30.298716517857144 197.24779999999998L 26.158872767857147 197.24779999999998Q 36.15887276785715 197.24779999999998 36.15887276785715 187.24779999999998L 36.15887276785715 187.24779999999998L 36.15887276785715 150.638Q 36.15887276785715 140.638 26.158872767857147 140.638L 30.298716517857144 140.638Q 20.298716517857144 140.638 20.298716517857144 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 20.298716517857144 150.638L 20.298716517857144 187.24779999999998Q 20.298716517857144 197.24779999999998 30.298716517857144 197.24779999999998L 26.158872767857147 197.24779999999998Q 36.15887276785715 197.24779999999998 36.15887276785715 187.24779999999998L 36.15887276785715 187.24779999999998L 36.15887276785715 150.638Q 36.15887276785715 140.638 26.158872767857147 140.638L 30.298716517857144 140.638Q 20.298716517857144 140.638 20.298716517857144 150.638z" pathFrom="M 20.298716517857144 150.638L 20.298716517857144 150.638L 36.15887276785715 150.638L 36.15887276785715 150.638L 36.15887276785715 150.638L 36.15887276785715 150.638L 36.15887276785715 150.638L 20.298716517857144 150.638" cy="177.24779999999998" cx="79.75630580357142" j="0" val="-13" barHeight="-56.60979999999999" barWidth="21.86015625"></path><path id="SvgjsPath2114" d="M 82.75630580357142 150.638L 82.75630580357142 209.0208Q 82.75630580357142 219.0208 92.75630580357142 219.0208L 88.61646205357142 219.0208Q 98.61646205357142 219.0208 98.61646205357142 209.0208L 98.61646205357142 209.0208L 98.61646205357142 150.638Q 98.61646205357142 140.638 88.61646205357142 140.638L 92.75630580357142 140.638Q 82.75630580357142 140.638 82.75630580357142 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 82.75630580357142 150.638L 82.75630580357142 209.0208Q 82.75630580357142 219.0208 92.75630580357142 219.0208L 88.61646205357142 219.0208Q 98.61646205357142 219.0208 98.61646205357142 209.0208L 98.61646205357142 209.0208L 98.61646205357142 150.638Q 98.61646205357142 140.638 88.61646205357142 140.638L 92.75630580357142 140.638Q 82.75630580357142 140.638 82.75630580357142 150.638z" pathFrom="M 82.75630580357142 150.638L 82.75630580357142 150.638L 98.61646205357142 150.638L 98.61646205357142 150.638L 98.61646205357142 150.638L 98.61646205357142 150.638L 98.61646205357142 150.638L 82.75630580357142 150.638" cy="199.0208" cx="142.2138950892857" j="1" val="-18" barHeight="-78.38279999999999" barWidth="21.86015625"></path><path id="SvgjsPath2115" d="M 145.2138950892857 150.638L 145.2138950892857 169.8294Q 145.2138950892857 179.8294 155.2138950892857 179.8294L 151.0740513392857 179.8294Q 161.0740513392857 179.8294 161.0740513392857 169.8294L 161.0740513392857 169.8294L 161.0740513392857 150.638Q 161.0740513392857 140.638 151.0740513392857 140.638L 155.2138950892857 140.638Q 145.2138950892857 140.638 145.2138950892857 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 145.2138950892857 150.638L 145.2138950892857 169.8294Q 145.2138950892857 179.8294 155.2138950892857 179.8294L 151.0740513392857 179.8294Q 161.0740513392857 179.8294 161.0740513392857 169.8294L 161.0740513392857 169.8294L 161.0740513392857 150.638Q 161.0740513392857 140.638 151.0740513392857 140.638L 155.2138950892857 140.638Q 145.2138950892857 140.638 145.2138950892857 150.638z" pathFrom="M 145.2138950892857 150.638L 145.2138950892857 150.638L 161.0740513392857 150.638L 161.0740513392857 150.638L 161.0740513392857 150.638L 161.0740513392857 150.638L 161.0740513392857 150.638L 145.2138950892857 150.638" cy="159.8294" cx="204.67148437499998" j="2" val="-9" barHeight="-39.191399999999994" barWidth="21.86015625"></path><path id="SvgjsPath2116" d="M 207.67148437499998 150.638L 207.67148437499998 191.6024Q 207.67148437499998 201.6024 217.67148437499998 201.6024L 213.53164062499997 201.6024Q 223.53164062499997 201.6024 223.53164062499997 191.6024L 223.53164062499997 191.6024L 223.53164062499997 150.638Q 223.53164062499997 140.638 213.53164062499997 140.638L 217.67148437499998 140.638Q 207.67148437499998 140.638 207.67148437499998 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 207.67148437499998 150.638L 207.67148437499998 191.6024Q 207.67148437499998 201.6024 217.67148437499998 201.6024L 213.53164062499997 201.6024Q 223.53164062499997 201.6024 223.53164062499997 191.6024L 223.53164062499997 191.6024L 223.53164062499997 150.638Q 223.53164062499997 140.638 213.53164062499997 140.638L 217.67148437499998 140.638Q 207.67148437499998 140.638 207.67148437499998 150.638z" pathFrom="M 207.67148437499998 150.638L 207.67148437499998 150.638L 223.53164062499997 150.638L 223.53164062499997 150.638L 223.53164062499997 150.638L 223.53164062499997 150.638L 223.53164062499997 150.638L 207.67148437499998 150.638" cy="181.6024" cx="267.12907366071425" j="3" val="-14" barHeight="-60.96439999999999" barWidth="21.86015625"></path><path id="SvgjsPath2117" d="M 270.12907366071425 150.638L 270.12907366071425 152.411Q 270.12907366071425 162.411 280.12907366071425 162.411L 275.98922991071424 162.411Q 285.98922991071424 162.411 285.98922991071424 152.411L 285.98922991071424 152.411L 285.98922991071424 150.638Q 285.98922991071424 140.638 275.98922991071424 140.638L 280.12907366071425 140.638Q 270.12907366071425 140.638 270.12907366071425 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 270.12907366071425 150.638L 270.12907366071425 152.411Q 270.12907366071425 162.411 280.12907366071425 162.411L 275.98922991071424 162.411Q 285.98922991071424 162.411 285.98922991071424 152.411L 285.98922991071424 152.411L 285.98922991071424 150.638Q 285.98922991071424 140.638 275.98922991071424 140.638L 280.12907366071425 140.638Q 270.12907366071425 140.638 270.12907366071425 150.638z" pathFrom="M 270.12907366071425 150.638L 270.12907366071425 150.638L 285.98922991071424 150.638L 285.98922991071424 150.638L 285.98922991071424 150.638L 285.98922991071424 150.638L 285.98922991071424 150.638L 270.12907366071425 150.638" cy="142.411" cx="329.58666294642853" j="4" val="-5" barHeight="-21.772999999999996" barWidth="21.86015625"></path><path id="SvgjsPath2118" d="M 332.58666294642853 150.638L 332.58666294642853 204.6662Q 332.58666294642853 214.6662 342.58666294642853 214.6662L 338.4468191964285 214.6662Q 348.4468191964285 214.6662 348.4468191964285 204.6662L 348.4468191964285 204.6662L 348.4468191964285 150.638Q 348.4468191964285 140.638 338.4468191964285 140.638L 342.58666294642853 140.638Q 332.58666294642853 140.638 332.58666294642853 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 332.58666294642853 150.638L 332.58666294642853 204.6662Q 332.58666294642853 214.6662 342.58666294642853 214.6662L 338.4468191964285 214.6662Q 348.4468191964285 214.6662 348.4468191964285 204.6662L 348.4468191964285 204.6662L 348.4468191964285 150.638Q 348.4468191964285 140.638 338.4468191964285 140.638L 342.58666294642853 140.638Q 332.58666294642853 140.638 332.58666294642853 150.638z" pathFrom="M 332.58666294642853 150.638L 332.58666294642853 150.638L 348.4468191964285 150.638L 348.4468191964285 150.638L 348.4468191964285 150.638L 348.4468191964285 150.638L 348.4468191964285 150.638L 332.58666294642853 150.638" cy="194.6662" cx="392.0442522321428" j="5" val="-17" barHeight="-74.0282" barWidth="21.86015625"></path><path id="SvgjsPath2119" d="M 395.0442522321428 150.638L 395.0442522321428 195.957Q 395.0442522321428 205.957 405.0442522321428 205.957L 400.9044084821428 205.957Q 410.9044084821428 205.957 410.9044084821428 195.957L 410.9044084821428 195.957L 410.9044084821428 150.638Q 410.9044084821428 140.638 400.9044084821428 140.638L 405.0442522321428 140.638Q 395.0442522321428 140.638 395.0442522321428 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask3fthe3ou)" pathTo="M 395.0442522321428 150.638L 395.0442522321428 195.957Q 395.0442522321428 205.957 405.0442522321428 205.957L 400.9044084821428 205.957Q 410.9044084821428 205.957 410.9044084821428 195.957L 410.9044084821428 195.957L 410.9044084821428 150.638Q 410.9044084821428 140.638 400.9044084821428 140.638L 405.0442522321428 140.638Q 395.0442522321428 140.638 395.0442522321428 150.638z" pathFrom="M 395.0442522321428 150.638L 395.0442522321428 150.638L 410.9044084821428 150.638L 410.9044084821428 150.638L 410.9044084821428 150.638L 410.9044084821428 150.638L 410.9044084821428 150.638L 395.0442522321428 150.638" cy="185.957" cx="454.5018415178571" j="6" val="-15" barHeight="-65.31899999999999" barWidth="21.86015625"></path></g><g id="SvgjsG2103" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG2112" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine2168" x1="0" y1="0" x2="437.203125" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2169" x1="0" y1="0" x2="437.203125" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2170" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2171" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2172" class="apexcharts-point-annotations"></g></g><g id="SvgjsG2143" class="apexcharts-yaxis" rel="0" transform="translate(15.796875, 0)"><g id="SvgjsG2144" class="apexcharts-yaxis-texts-g"><text id="SvgjsText2145" font-family="Helvetica, Arial, sans-serif" x="20" y="52.5" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2146">30</tspan><title>30</title></text><text id="SvgjsText2147" font-family="Helvetica, Arial, sans-serif" x="20" y="96.04599999999999" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2148">20</tspan><title>20</title></text><text id="SvgjsText2149" font-family="Helvetica, Arial, sans-serif" x="20" y="139.59199999999998" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2150">10</tspan><title>10</title></text><text id="SvgjsText2151" font-family="Helvetica, Arial, sans-serif" x="20" y="183.13799999999998" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2152">0</tspan><title>0</title></text><text id="SvgjsText2153" font-family="Helvetica, Arial, sans-serif" x="20" y="226.68399999999997" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2154">-10</tspan><title>-10</title></text><text id="SvgjsText2155" font-family="Helvetica, Arial, sans-serif" x="20" y="270.22999999999996" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2156">-20</tspan><title>-20</title></text></g></g><g id="SvgjsG2091" class="apexcharts-annotations"></g></svg><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(105, 108, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 528px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                      <div class="col-md-4">
                        <div class="card-body">
                          <div class="text-center">
                            <div class="dropdown">
                              <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" id="growthReportId" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                2022
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="growthReportId">
                                <a class="dropdown-item" href="javascript:void(0);">2021</a>
                                <a class="dropdown-item" href="javascript:void(0);">2020</a>
                                <a class="dropdown-item" href="javascript:void(0);">2019</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div id="growthChart" style="min-height: 154.875px;"><div id="apexchartsu6e0l5i1" class="apexcharts-canvas apexchartsu6e0l5i1 apexcharts-theme-light" style="width: 264px; height: 154.875px;"><svg id="SvgjsSvg2173" width="264" height="154.875" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2175" class="apexcharts-inner apexcharts-graphical" transform="translate(25, -25)"><defs id="SvgjsDefs2174"><clipPath id="gridRectMasku6e0l5i1"><rect id="SvgjsRect2177" width="222" height="285" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMasku6e0l5i1"></clipPath><clipPath id="nonForecastMasku6e0l5i1"></clipPath><clipPath id="gridRectMarkerMasku6e0l5i1"><rect id="SvgjsRect2178" width="220" height="287" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2183" x1="1" y1="0" x2="0" y2="1"><stop id="SvgjsStop2184" stop-opacity="1" stop-color="rgba(105,108,255,1)" offset="0.3"></stop><stop id="SvgjsStop2185" stop-opacity="0.6" stop-color="rgba(255,255,255,0.6)" offset="0.7"></stop><stop id="SvgjsStop2186" stop-opacity="0.6" stop-color="rgba(255,255,255,0.6)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient2194" x1="1" y1="0" x2="0" y2="1"><stop id="SvgjsStop2195" stop-opacity="1" stop-color="rgba(105,108,255,1)" offset="0.3"></stop><stop id="SvgjsStop2196" stop-opacity="0.6" stop-color="rgba(105,108,255,0.6)" offset="0.7"></stop><stop id="SvgjsStop2197" stop-opacity="0.6" stop-color="rgba(105,108,255,0.6)" offset="1"></stop></linearGradient></defs><g id="SvgjsG2179" class="apexcharts-radialbar"><g id="SvgjsG2180"><g id="SvgjsG2181" class="apexcharts-tracks"><g id="SvgjsG2182" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 142.16493902439026 167.17541022773656" fill="none" fill-opacity="1" stroke="rgba(255,255,255,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="17.357317073170734" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 142.16493902439026 167.17541022773656"></path></g></g><g id="SvgjsG2188"><g id="SvgjsG2193" class="apexcharts-series apexcharts-radial-series" seriesName="Growth" rel="1" data:realIndex="0"><path id="SvgjsPath2198" d="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 175.95555982735613 100.85758285229481" fill="none" fill-opacity="0.85" stroke="url(#SvgjsLinearGradient2194)" stroke-opacity="1" stroke-linecap="butt" stroke-width="17.357317073170734" stroke-dasharray="5" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="234" data:value="78" index="0" j="0" data:pathOrig="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 175.95555982735613 100.85758285229481"></path></g><circle id="SvgjsCircle2189" r="54.65121951219512" cx="108" cy="108" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG2190" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText2191" font-family="Public Sans" x="108" y="123" text-anchor="middle" dominant-baseline="auto" font-size="15px" font-weight="500" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-label" style="font-family: &quot;Public Sans&quot;;">Growth</text><text id="SvgjsText2192" font-family="Public Sans" x="108" y="99" text-anchor="middle" dominant-baseline="auto" font-size="22px" font-weight="500" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-value" style="font-family: &quot;Public Sans&quot;;">78%</text></g></g></g></g><line id="SvgjsLine2199" x1="0" y1="0" x2="216" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2200" x1="0" y1="0" x2="216" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2176" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
                        <div class="text-center fw-semibold pt-3 mb-2">62% Company Growth</div>

                        <div class="d-flex px-xxl-4 px-lg-2 p-4 gap-xxl-3 gap-lg-1 gap-3 justify-content-between">
                          <div class="d-flex">
                            <div class="me-2">
                              <span class="badge bg-label-primary p-2"><i class="bx bx-dollar text-primary"></i></span>
                            </div>
                            <div class="d-flex flex-column">
                              <small>2022</small>
                              <h6 class="mb-0">$32.5k</h6>
                            </div>
                          </div>
                          <div class="d-flex">
                            <div class="me-2">
                              <span class="badge bg-label-info p-2"><i class="bx bx-wallet text-info"></i></span>
                            </div>
                            <div class="d-flex flex-column">
                              <small>2021</small>
                              <h6 class="mb-0">$41.2k</h6>
                            </div>
                          </div>
                        </div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 265px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                    </div>
                  </div>
                </div>


          

              
              <div class="col-md-3 p-4">
                    <div class="toast-container" style="float: right;">
                      <div class="bs-toast toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-primary" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-secondary" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-success" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-danger" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-warning" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-info" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>

                      <div class="bs-toast toast fade show bg-dark" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                          <i class="bx bx-bell me-2"></i>
                          <div class="me-auto fw-semibold">Bootstrap</div>
                          <small>11 mins ago</small>
                          <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                        <div class="toast-body">
                          Fruitcake chocolate bar tootsie roll gummies gummies jelly beans cake.
                        </div>
                      </div>
                    </div>
                  </div>
              
              


     




            <div class="content-backdrop fade"></div>
          </div>
          </div>





		<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->

	<!-- head_link 2 -->
	<%@ include file="./inc/sneat/sneat_header_link2.jsp"%>
	<!-- head_link 2  End -->
	
		  <!-- Custom js for this page-->
	    <script src="/resources/chart/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="/resources/chart/vendors/chart.js/Chart.min.js"></script>
  <script src="/resources/chart/js/chart.js"></script>
  <script src="/resources/chart/js/dashboard.js"></script>
  <script src="/resources/chart/js/Chart.roundedBarCharts.js"></script>

</body>
</html>
