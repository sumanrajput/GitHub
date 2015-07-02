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
        <li class="active">Model Master</li>
      </ol>
    </div>
    <div class="cl-mcont">
    <div class="row">
      <div class="col-md-12">
        <div class="block-flat">
          <div class="header">							
            <h3>Model</h3>
          </div>
          <div class="content">
              <s:form class="form-horizontal group-border-dashed" action="new-prototype.html">
              <div class="form-group">
                <label class="col-sm-3 control-label">Model Id<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:textfield name="prototypeVo.modelId" class="form-control" placeholder="Model Id" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label">Version<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:textfield name="prototypeVo.version" class="form-control"  placeholder="Version" />
                </div>
              </div>
              
                <div class="form-group">
              	 <label class="col-sm-3 control-label">Current Version<span style="color:red;">*</span></label>
                <div class="col-sm-6">
                  <s:textfield name="prototypeVo.currentVersion" class="form-control"  placeholder="Current Version" />
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Model Version Status</label>
                <div class="col-sm-6">
                		<s:select headerKey="-1" headerValue="Select Model Version Status"
							list="#{'0':'Major updates; Results of this version are superseded by more recent results, and should not be included in the analysis of the data base', '1':'Major updates; Results of this version can still be used for analysis, but should be discounted relative to more recent results', '2':'Minor updates; Results of the model version are of comparable quality, and can be used for analysis.', '3':'(Almost) identical'}" 
							name="prototypeVo.versionStatus" class="form-control"/>
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Name of Person</label>
                <div class="col-sm-6">
                  <s:textfield name="prototypeVo.personName" class="form-control"  placeholder="Person Name" />
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Date of Entry</label>
                <div class="col-sm-6">
                  <s:textfield name="prototypeVo.entryDate" class="form-control"  placeholder="Entry Date" />
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Model Documentation</label>
                <div class="col-sm-6">
                	<s:textarea name="prototypeVo.modelDocumentation" class="form-control"   ></s:textarea>
                </div>
              </div>
                            
              <div class="form-group">
              	<label class="col-sm-3 control-label"> Model Type - Solution Concept </label>
              <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Solution Concept"
							  list="#{'0':'Partial equilibrium (price elastic demand)', '1':'Partial equilibrium (fixed demand)', '2':'General equilibrium (closed economy)', '3':'Other (please specify)'}" 
							  name="prototypeVo.modelSolutionConcept" class="form-control"/>
              </div>
              </div>
              
              <div class="form-group">
              		<label class="col-sm-3 control-label">Model Type - Solution Horizon </label>
              <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Solution Horizon"
						list="#{'0':'Inter-temporal (foresight)', '1':'Recursive-dynamic (myopic)', '2':'Other (please specify)'}" 
						name="prototypeVo.modelSolutionHorizon" class="form-control"/>
              </div>
              </div>
                                                       
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Model Type - Solution Method</label>
                <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Solution Method"
						list="#{'0':'Simulation', '1':'Optimization', '2':'Other (please specify)'}" 
						name="prototypeVo.modelSolutionMethod" class="form-control"/>
                </div>
              </div>
    
               <div class="form-group">
              	 <label class="col-sm-3 control-label">Exogenous Growth Drivers</label>
                <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Exogenous Growth Drivers"
							  list="#{'0':'Labor productivity', '1':'Total factor productivity','2':'Exogenous GDP', '3':'Other (please specify)'}" 
							  name="prototypeVo.modelExogenousGrowthDrivers" class="form-control"/>
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Cost Measure</label>
                <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Cost Measure"
							  list="#{'0':'Welfare loss - Yes', '1':'Welfare loss - No','2':'Consumption loss - Yes', '3':'Consumption loss - No','4':'GDP loss - Yes','5':'GDP loss - No','6':'Area under MAC - Yes','7':'Area under MAC - No'}" 
							  name="prototypeVo.costMeasure" class="form-control"/>
                </div>
              </div>
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Base Year</label>
                <div class="col-sm-6">
                	<s:textfield name="prototypeVo.baseYear" class="form-control"   placeholder="Base Year"  />
                </div>
              </div>                            
              
               <div class="form-group">
              	 <label class="col-sm-3 control-label">Time Horizon</label>
               <div class="col-sm-6">
                	<s:textfield name="prototypeVo.timeHorizon" class="form-control"   placeholder="Time Horizon"  />
                </div>
              </div>                            
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Time Step</label>
              <div class="col-sm-6">
                	<s:textfield name="prototypeVo.timeStep" class="form-control"   placeholder="Time Step"  />
                </div>
              </div>                            
                                         
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Regional Coverage</label>
              <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Regional Coverage"
							  list="#{'WLD':'World', 'NA':'North America','EUP':'Europe', 'ASIA':'Asia','SA':'South America'}" 
							  name="prototypeVo.regionalCoverage" class="form-control"/>
                </div>
              </div>              
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Number of Region</label>
                <div class="col-sm-6">
                	<s:textfield name="prototypeVo.numberOfRegions" class="form-control"   placeholder="Number of Region"  />
                </div>
              </div>                            
  
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Trade </label>
              <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Trade"
							  list="#{'0':'Non-Energy goods - Yes', '1':'Non-Energy goods - No','2':'Energy goods - Yes', '3':'Energy goods - No','4':'Coal - Yes','5':'Coal - No','6':'Oil - Yes','7':'Oil - No'}" 
							  name="prototypeVo.trade" class="form-control"/>
                </div>
              </div>  
                    
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Number of Sectors</label>
                <div class="col-sm-6">
                	<s:textfield name="prototypeVo.numberOfSectors" class="form-control"   placeholder="Number of Sectors"  />
                </div>
              </div>                            
                                         
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Energy Service Sector </label>
              <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Energy Service Sector"
							list="#{'0':'Industry - Yes', '1':'Industry - No','2':'Residential & Commercial - Yes', '3':'Residential & Commercial - No'}" 
							name="prototypeVo.energyServiceSectors"  class="form-control"/>
                </div>
              </div>   
                                         
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Economic Sector </label>
                <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Economic Sector"
							  list="#{'0':'Industry - Yes', '1':'Industry - No','2':'Services - Yes', '3':'Services - No','4':'Energy - Yes','5':'Energy - No'}" 
							  name="prototypeVo.economicSectors" class="form-control"/>
                </div>
              </div>   
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Number of Technologies</label>
                <div class="col-sm-6">
                	<s:textfield name="prototypeVo.numberOfTechnologies" class="form-control"   placeholder="Number of Technologies"  />
                </div>
              </div>                            
                                         
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Energy Technologies</label>
                <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Energy Technologies"
							  list="#{'0':'Coal w/o CCS - Yes', '1':'Coal w/o CCS - No','2':'Coal w/ CCS - Yes', '3':'Coal w/ CCS - No','4':'Gas w/o CCS - Yes','5':'Gas w/o CCS - No'}" 
							  name="prototypeVo.energyTechnologies" class="form-control"/>
                </div>
              </div>   
              
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Energy Technology Substitution</label>
              <div class="col-sm-6">
                	<s:select headerKey="-1" headerValue="Select Energy Technology Substitution"
							  list="#{'0':'No discrete technology choices', '1':'Discrete technology choices with high substitutability','2':'Discrete technology choice with low substitutability','3':'Expansion and decline constraints - No','4':'Expansion and decline constraints - Yes','5':'System integration constraints - No','6':'System integration constraints - Yes'}" 
							  name="prototypeVo.energyTechnologySubstitution" class="form-control"/>
              </div>
              </div>   
                                         
              <div class="form-group">
              	 <label class="col-sm-3 control-label">Greenhouse Gas Emissions</label>
                <div class="col-sm-6">
                	<s:select 
						headerKey="-1" headerValue="Select Greenhouse Gas Emissions"
						list="#{'0':'CH4 - Yes', '1':'CH4 - No','2':'N2O - Yes','3':'N2O - Yes'	}" 
						name="prototypeVo.greenhouseGasEmissions"  class="form-control"/>
                </div>
              </div>   

       		<div class="form-group">
              	 <label class="col-sm-3 control-label">Climate Change</label>
                <div class="col-sm-6">
                	<s:select 
					headerKey="-1" headerValue="Select Climate Change"
					list="#{'0':'Radiative forcing','1':'Temperature change','2':'Climate damages','3':'Adaptation','4':'None of the above'	}" 
					name="prototypeVo.climateChange" class="form-control"/>
                </div>
              </div>   
                                         
           <div class="form-group">
              	 <label class="col-sm-3 control-label">Co-linkages</label>
                <div class="col-sm-6">
                	<s:select 
					headerKey="-1" headerValue="Select Co-linkages"
					list="#{'0':'Fossil fuel imports & exports (region) - Yes','1':'Fossil fuel imports & exports (region) - No','2':'Household energy consumption - Yes','3':'Household energy consumption - No','4':'Source-based aerosol emissions - Yes','5':'Source-based aerosol emissions - No'	}" 
					name="prototypeVo.coLinkages" class="form-control"/>
                </div>
              </div>   
              
           <div class="form-group">
              	 <label class="col-sm-3 control-label">Resource Use</label>
                <div class="col-sm-6">
                	<s:select 
						headerKey="-1" headerValue="Select Resource Use"
						list="#{'0':'Oil - Yes','1':'Oil - No','2':'Gas - Yes','3':'Gas - No','4':'Uranium - Yes','5':'Uranium - No','6':'Biomass - Yes','7':'Biomass - No','8':'Land - Yes','9':'Land - no','10':'Water - Yes','11':'Water - No','12':'Raw Materials - Yes','13':'Raw Materials - No'	}" 
						name="prototypeVo.resourceUse" class="form-control"/>
                </div>
              </div>   
                                         
           <div class="form-group">
            	 <label class="col-sm-3 control-label">Land Use</label>
              <div class="col-sm-6">
              	<s:select 
					headerKey="-1" headerValue="Select Land Use"
					list="#{'0':'Land use for Bioenergy - Yes','1':'Land use for Bioenergy - No','2':'Food consumption - Yes','3':'Food consumption - No','4':'Crop prices - Yes','5':'Crop prices - No','6':'Water indicators - Yes','7':'Water indicators - No'	}" 
					name="prototypeVo.landUse" class="form-control"/>
              </div>
            </div>  			
                                         
           <div class="form-group">
              	 <label class="col-sm-3 control-label">Development</label>
                <div class="col-sm-6">
                	<s:select 
						headerKey="-1" headerValue="Select Development"
						list="#{'0':'Income distribution in a region - Yes','1':'Income distribution in a region - No','2':'Urbanization rate - Yes','3':'Urbanization rate - No','4':'Education level - Yes','5':'Education level - No','6':'Labor participation rate - Yes','7':'Labor participation rate - No'	}" 
						name="prototypeVo.development" class="form-control"/>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                	<s:if test="%{#request.id!=null}">
						<s:submit  class="btn btn-primary" value=" Update >> " /> 
					</s:if><s:else>
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
    
    <div class="row">
      <div class="col-md-12">
      <div class="block-flat">
         <display:table id="bank_details" name="prototypeList" requestURI="/prototype.html" cellpadding="3" export="true"  pagesize="10">
         <display:caption media="html">
    		<strong>Model List</strong>
    	</display:caption>
    		<display:setProperty name="export.pdf" value="true"/>
			<display:setProperty name="export.excel" value="true"/>
			<display:setProperty name="export.cvs" value="true"/>
            <display:column property="tableIndex" title="Sr. No." />
			<display:column property="modelId" title="Model ID" sortable="true" headerClass="sortable" />
			<display:column property="version" title="Version" />
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
