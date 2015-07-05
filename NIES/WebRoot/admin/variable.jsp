<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<link rel="shortcut icon" href="assets/img/favicon.png">

	    <title>NIES - National Institute for Environmental Studies</title>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:100' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
  

	    <!-- Bootstrap core CSS -->
	    <link href="admin/js/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
		<link rel="stylesheet" href="admin/fonts/font-awesome-4/css/font-awesome.min.css">

	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	    <![endif]-->
	    <link rel="stylesheet" type="text/css" href="admin/js/jquery.gritter/css/jquery.gritter.css" />

		<link rel="stylesheet" type="text/css" href="admin/js/jquery.nanoscroller/nanoscroller.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/jquery.easypiechart/jquery.easy-pie-chart.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/bootstrap.switch/bootstrap-switch.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/jquery.select2/select2.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/bootstrap.slider/css/slider.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/intro.js/introjs.css" />
		<link rel="stylesheet" href="admin/js/jquery.vectormaps/jquery-jvectormap-1.2.2.css" type="text/css" media="screen"/>
		<link rel="stylesheet" type="text/css" href="admin/js/jquery.magnific-popup/dist/magnific-popup.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/jquery.niftymodals/css/component.css" />
		<link rel="stylesheet" type="text/css" href="admin/js/bootstrap.summernote/dist/summernote.css" />

		<!-- Custom styles for this template -->
		<link href="admin/css/style.css" rel="stylesheet" />
		
		<s:head/>
</head>
<body>

  <!-- Fixed navbar -->
  	<s:include value="includes/admin_menu.jsp" />

	<div id="cl-wrapper" class="fixed-menu">
		<s:include value="includes/admin_menu_left.jsp" />
	
		<div class="container-fluid" id="pcont">
    <div class="page-head">
      <ol class="breadcrumb">
        <li><a href="#">Home</a></li>
        <li><a href="#">Master</a></li>
        <li class="active">Variables</li>
      </ol>
    </div>
    <div class="cl-mcont">
    <div class="row">
      <div class="col-md-12">
        <div class="block-flat">
          <div class="header">							
            <h3>Variables Description</h3>
          </div>
          <div class="content">
          
         	  <div style="font:bold;color:red">
				<s:actionerror/>
			  </div>
			  
              
              <s:form class="form-horizontal group-border-dashed" action="new-variable.html">
             
             <div class="form-group">
                <label class="col-sm-3 control-label">Variable Id<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:textfield name="variableVo.variableId" class="form-control" placeholder="Variable Id" required="true" />
                </div>
              </div>
               <div class="form-group">
              	 <label class="col-sm-3 control-label">Variable Name<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:textfield name="variableVo.variableName" class="form-control"  placeholder="Variable Name"  required="true"/>
                </div>
              </div>
              
             
               <div class="form-group">
              	 <label class="col-sm-3 control-label">Area Name<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                	<s:select headerKey="" headerValue="Select Area" name="variableVo.areaId" list="areaList" listKey="lookupId" listValue="lookupName" class="form-control"  required="true"/>
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Unit Name<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                	<s:select headerKey="" headerValue="Select Unit" name="variableVo.unitId" list="unitList" listKey="lookupId" listValue="lookupName" class="form-control"  required="true"/>
                </div>
              </div>
              
              
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Variable Definition<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:textarea name="variableVo.definition" class="form-control"  placeholder="Variable Definition"  required="true"/>
                </div>
              </div>
              
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
	            
	                <s:if test="%{#request.id!=null}">
						<s:submit  class="btn btn-primary" value=" Update >> " /> 
					</s:if>
					<s:else>
						<s:submit  class="btn btn-primary" value=" Save >> " /> 
					</s:else>
					<s:reset  class="btn btn-default" value="Reset >>" />
                </div>
              </div>
            </s:form>
          </div>
        </div>
      </div>
    </div>
   	<div style="text-align: center;">
   		<h3> OR </h3>
   	</div>
    <div class="row">
      <div class="col-md-12">
        <div class="block-flat">
          <div class="header">							
            <h3>Bulk Upoad Variables Description</h3>
          </div>
          <div class="content">
          
              <div style="font:bold;color:red">
				<s:fielderror/>
			<%-- 	<s:actionmessage/> --%>
			  </div>
              
              <s:form class="form-horizontal group-border-dashed" action="doBulkVariable.html" enctype="multipart/form-data">
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Select file <span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:file name="variableVo.upload" class="form-control" placeholder="Upload image max 200 KB"  required="true"/>
                </div>
              </div>
              
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
					<s:submit  class="btn btn-primary" value=" Upload >> " /> 
					<s:reset  class="btn btn-default" value="Reset >>" />
                </div>
              </div>

            </s:form>
            Sample format for upload xls & xlsx file <a href="variableMasteSample.xlsx"> Click here</a>  
          </div>
        </div>
      </div>
    </div>
   
    
    
    <div class="row">
      <div class="col-md-12">
      <div class="block-flat">
         <display:table id="bank_details" name="variableList" requestURI="/variable.html" cellpadding="3" export="true"  pagesize="10">
         <display:caption media="html">
    		<strong>Variable Details</strong>
    	</display:caption>
    

		<display:header>
		     <thead id="sModel">
		      <tr>
		       <th><input type="text" name="modelName" class="search_init"/></th>
			   <th><input type="text" name="modelDescription" class="search_init"/></th>
		       </tr>
	        </thead>
       </display:header>



    		<display:setProperty name="export.pdf" value="true"/>
			<display:setProperty name="export.excel" value="true"/>
			<display:setProperty name="export.cvs" value="true"/>
            <display:column property="tableIndex" title="Sr. No." />
            <display:column property="variableId" title="Variable Id" sortable="true" headerClass="sortable"  />
			<display:column property="variableName" title="Variable Name" sortable="true" headerClass="sortable"  />
			<display:column property="definition" title="Variable Definition" />
			<display:column property="unitName" title="Unit Name" />
			<display:column property="areaName" title="Area Name" />
			<display:column property="link" title="Actions" media="html"/>
		</display:table>
		</div>
      </div>
    </div>
    
    </div>
  </div> 
	</div>

  <script type="text/javascript" src="admin/js/jquery.js"></script>
    <script type="text/javascript" src="admin/js/jquery.gritter/js/jquery.gritter.js"></script>

  <script type="text/javascript" src="admin/js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
	<script type="text/javascript" src="admin/js/behaviour/general.js"></script>
  <script src="admin/js/jquery.ui/jquery-ui.js" type="text/javascript"></script>
	<script type="text/javascript" src="admin/js/jquery.sparkline/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="admin/js/jquery.easypiechart/jquery.easy-pie-chart.js"></script>
	<script type="text/javascript" src="admin/js/jquery.nestable/jquery.nestable.js"></script>
	<script type="text/javascript" src="admin/js/bootstrap.switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="admin/js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
  <script src="admin/js/jquery.select2/select2.min.js" type="text/javascript"></script>
  <script src="admin/js/skycons/skycons.js" type="text/javascript"></script>
  <script src="admin/js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
  <script type="text/javascript" src="admin/js/jquery.niftymodals/js/jquery.modalEffects.js"></script>   
    <script type="text/javascript" src="admin/js/bootstrap.summernote/dist/summernote.min.js"></script>

  <script src="admin/js/jquery.vectormaps/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-us-merc-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-world-mill-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-fr-merc-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-uk-mill-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-us-il-chicago-mill-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-au-mill-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-in-mill-en.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-map.js"></script>
    <script src="admin/js/jquery.vectormaps/maps/jquery-jvectormap-ca-lcc-en.js"></script>

  <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
      $(document).ready(function(){
        //initialize the javascript
        App.init();
        //App.dashBoard();        
        /*Sparklines*/
        $(".spk1").sparkline([2,4,3,6,7,5,8,9,4,2,6,8,8,9,10], { type: 'bar', width: '80px', barColor: '#4A8CF7'});
        $(".spk2").sparkline([4,6,7,7,4,3,2,1,4,4 ,5,6,5], { type: 'discrete', width: '80', lineColor: '#4A8CF7',thresholdValue: 4,thresholdColor: '#ff0000'});
        $(".spk4").sparkline([2,4,3,6,7,5,8,9,4,2,10,], { type: 'bar', width: '80px', height: '30px',barColor: '#EA6153'});
        $(".spk5").sparkline([5,3,5,6,5,7,4,8,6,9,8,], { type: 'bar', width: '80px', height: '30px',barColor: '#4AA3DF'});
      
        $(".spk3").sparkline([5,6,7,9,9,5,3,2,2,4,6,7], {
        type: 'line',
        lineColor: '#258FEC',
        fillColor: '#4A8CF7',
        spotColor: false,
        width: '80px',
        minSpotColor: false,
        maxSpotColor: false,  
        highlightSpotColor: '#1e7ac6',
        highlightLineColor: '#1e7ac6'});
     
        //Maps 
        $('#world-map').vectorMap({
          map: 'world_mill_en',
          backgroundColor: 'transparent',
          regionStyle: {
            initial: {
              fill: '#38c3c1',
            },
            hover: {
              "fill-opacity": 0.8
            }
          },
          markerStyle:{
              initial:{
                r: 10
              },
               hover: {
                r: 12,
                stroke: 'rgba(255,255,255,0.8)',
                "stroke-width": 4
              }
            },
            markers: [
                {latLng: [41.90, 12.45], name: '1.512 Visits', style: {fill: '#E44C34',stroke:'rgba(255,255,255,0.7)',"stroke-width": 3}},
                {latLng: [1.3, 103.8], name: '940 Visits', style: {fill: '#E44C34',stroke:'rgba(255,255,255,0.7)',"stroke-width": 3}},
                {latLng: [51.511214, -0.119824], name: '530 Visits', style: {fill: '#E44C34',stroke:'rgba(255,255,255,0.7)',"stroke-width": 3}},
                {latLng: [40.714353, -74.005973], name: '340 Visits', style: {fill: '#E44C34',stroke:'rgba(255,255,255,0.7)',"stroke-width": 3}},
                {latLng: [-22.913395, -43.200710], name: '1.800 Visits', style: {fill: '#E44C34',stroke:'rgba(255,255,255,0.7)',"stroke-width": 3}}
            ]
        });
        
        /*Pie Chart*/
        var data = [
        { label: "Google", data: 50},
        { label: "Dribbble", data: 15},
        { label: "Twitter", data: 12},
        { label: "Youtube", data: 14},
        { label: "Microsoft", data: 14}
        ]; 

        $.plot('#ticket-chart', data, {
          series: {
            pie: {
              show: true,
              innerRadius: 0.5,
              shadow:{
                top: 5,
                left: 15,
                alpha:0.3
              },
              stroke:{
                width:0
              },
              label: {
                show: false
              },
              highlight:{
                opacity: 0.08
              }
            }
          },
          grid: {
            hoverable: true,
            clickable: true
          },
          colors: ["#5793f3", "#19B698","#dd4444","#fd9c35","#fec42c","#d4df5a","#5578c2"],
          legend: {
            show: false
          }
        });
        
        $("table td .legend").each(function(){
          var el = $(this);
          var color = el.data("color");
          el.css("background",color);
        });

      });
    </script>
    	<script type="text/javascript" src="admin/js/jquery.magnific-popup/dist/jquery.magnific-popup.min.js"></script>
   
  <script type="text/javascript">
    $(document).ready(function(){
    
      $('.image-zoom').magnificPopup({ 
        type: 'image',
        mainClass: 'mfp-with-zoom', // this class is for CSS animation below
        zoom: {
          enabled: true, // By default it's false, so don't forget to enable it
          duration: 300, // duration of the effect, in milliseconds
          easing: 'ease-in-out', // CSS transition easing function 
          opener: function(openerElement) {
            var parent = $(openerElement);
            return parent;
          }
        }
      });
      
      //Nifty Modals Init
      $('.md-trigger').modalEffects();
      
      //Summernote Editor
      $('#summernote').summernote({ 
        height: 100,
        toolbar: [
        ['style', ['bold', 'italic', 'underline', 'clear']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']]
      ]});
    });
  </script>

    <script src="admin/js/behaviour/voice-commands.js"></script>
  <script src="admin/js/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="admin/js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="admin/js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript" src="admin/js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript" src="admin/js/jquery.flot/jquery.flot.labels.js"></script>
  </body>
</html>
