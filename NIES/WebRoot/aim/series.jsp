<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html lang="en">
    <head>
    	<s:include value="includes/header.jsp" /> 
    	<s:head/>
    	 <script src="assets/js/jquery-1.11.1.min.js"></script>
		<script src="media/js/jquery.dataTables.min.js"></script>
		<link rel="stylesheet" href="media/css/demo_table_jui.css" type="text/css">
		<link rel="stylesheet" href="themes/smoothness/jquery-ui-1.8.4.custom.css" type="text/css">
			<script src="aim/jquery/jquery.js" type="text/javascript"></script>
			<script src="aim/jquery/jquery-ui.custom.js" type="text/javascript"></script>
			<script src="aim/jquery/jquery.cookie.js" type="text/javascript"></script>
			<link href="aim/src/skin/ui.dynatree.css" rel="stylesheet" type="text/css" id="skinSheet">
			<script src="aim/src/jquery.dynatree.js" type="text/javascript"></script>
			<script type="text/javascript">
				var regionData, modelData,variableData,scenarioData;
				var treeData = [
					{title: "Regions", isFolder: true,
						children: [	
									{key: "USA", title :"USA"},
									{key: "XE25", title :"EU"},
									{key: "XER", title :"Rest of Europe"},
									{key: "TUR", title :"Turtitle"},
									{key: "XOC", title :"New Zealand and Australia"},
									{key: "CHN", title :"China"},
									{key: "IND", title :"India"},
									{key: "JPN", title :"Japan"},
									{key: "XSE", title :"Rest of East and South East Asia"},
									{key: "XSA", title :"Rest of Asia"},
									{key: "CAN", title :"Canada"},
									{key: "BRA", title :"Brazil"},
									{key: "XLM", title :"Rest of Brazil"},
									{key: "CIS", title :"Former USSR"},
									{key: "XME", title :"Middle East"},
									{key: "XNF", title :"North Africa"},
									{key: "XAF", title :"Other Africa"}
								]},
				];
				var treeData2;
				treeData2 = [
					{title: "Model/Scenarios", isFolder: true,
						children: [	
									{key: "SSP3-Ref-SPA0-V1", title :"SSP3-Ref-SPA0-V1"},
									{key: "Model2", title :"Model02"},
									{key: "Model3", title :"Model03"},
									{key: "Model4", title :"Model04"},
									{key: "Model5", title :"Model05"},
									{key: "Model6", title :"Model06"},
									{key: "Model7", title :"Model07"},
									{key: "Model8", title :"Model08"},
									{key: "Model9", title :"Model09"},
									{key: "Model10", title :"Model10"},
									{key: "Model11", title :"Model11"},
									{key: "Model12", title :"Model12"},
									{key: "Model13", title :"Model13"},
									{key: "Model14", title :"Model14"},
									{key: "Model15", title :"Model15"},
									{key: "Model16", title :"Model16"}
								]},
				];
				
				
				var treeData1 = [
					{title: "Variable", isFolder: true,
						children: [	
									{ key: "VR003", title: "Emissions|CO2|Fossil Fuels and Industry"},
									{ key: "Final Energy", title: "Final Energy"},
									{ key: "Price|Primary Energy|Oil", title: "Price|Primary Energy|Oil"},
									{ key: "VR009", title: "Price|Secondary Energy|Electricity"},
									{ key: "VR010", title: "Primary Energy"},
									{ key: "VR011", title: "Primary Energy|Biomass"},
									{ key: "VR012", title: "Primary Energy|Coal"},
									{ key: "VR013", title: "Primary Energy|Fossil"},
									{ key: "VR014", title: "Primary Energy|Fossil|w/ CCS"},
									{ key: "VR015", title: "Primary Energy|Fossil|w/o CCS"},
									{ key: "VR016", title: "Primary Energy|Gas"},
									{ key: "VR017", title: "Primary Energy|Non-Biomass Renewables"},
									{ key: "VR018", title: "Primary Energy|Nuclear"},
									{ key: "VR019", title: "Primary Energy|Oil"},
									{ key: "VR020", title: "Primary Energy|Other"},
									{ key: "VR021", title: "Secondary Energy|Electricity"},
									{ key: "VR022", title: "Secondary Energy|Electricity|Biomass"},
									{ key: "VR023", title: "Secondary Energy|Electricity|Coal"},
									{ key: "VR024", title: "Secondary Energy|Electricity|Gas"},
									{ key: "VR025", title: "Secondary Energy|Electricity|Non-Biomass Renewables"},
									{ key: "VR026", title: "Secondary Energy|Electricity|Nuclear"},
									{ key: "VR027", title: "Secondary Energy|Electricity|Oil"},
									{ key: "VR028", title: "Secondary Energy|Electricity|Other"},
									{ key: "VR029", title: "Secondary Energy|Liquids"},
									{ key: "VR030", title: "Policy Cost|Additional Total Energy System Cost"},
									{ key: "VR031", title: "Policy Cost|Area under MAC Curve"},
									{ key: "VR032", title: "Policy Cost|Consumption Loss"},
									{ key: "VR033", title: "Policy Cost|Equivalent Variation"},
									{ key: "VR034", title: "Policy Cost|GDP Loss"},
									{ key: "VR035", title: "Policy Cost|Other"},
									{ key: "VR039", title: "Emissions|CH4|Land Use"},
									{ key: "VR041", title: "Emissions|CO2|Carbon Capture and Storage"},
									{ key: "VR042", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Demand"},
									{ key: "VR043", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Demand|Industry"},
									{ key: "VR044", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Demand|Other Sector"},
									{ key: "VR045", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Demand|Residential and Commercial"},
									{ key: "VR046", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Demand|Transportation"},
									{ key: "VR047", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Supply"},
									{ key: "VR048", title: "Emissions|CO2|Fossil Fuels and Industry|Energy Supply|Electricity"},
									{ key: "VR049", title: "Emissions|CO2|Land Use"}
								]},
				];
				$(function(){
					$("#tree3").dynatree({
						checkbox: true,
						selectMode: 3,
						children: treeData,
						onActivate: function(node) {
						$("#echoSelection3").text(node.data.key);
							regionData = node.data.key;
						},
						onSelect: function(select, node) {
							// Get a list of all selected nodes, and convert to a key array:
							var selKeys = $.map(node.tree.getSelectedNodes(), function(node){
								return node.data.key;
							});
							//alert(selKeys);
							$("#echoSelection3").text(selKeys.join(", "));
							regionData = selKeys.join(", ");
							// Get a list of all selected TOP nodes
							var selRootNodes = node.tree.getSelectedNodes(true);
							// ... and convert to a key array:
							var selRootKeys = $.map(selRootNodes, function(node){
								return node.data.key;
							});
							$("#echoSelectionRootKeys3").text(selRootKeys.join(", "));
							
							$("#echoSelectionRoots3").text(selRootNodes.join(", "));
						},
						onDblClick: function(node, event) {
							node.toggleSelect();
						},
						onKeydown: function(node, event) {
							if( event.which == 32 ) {
								node.toggleSelect();
								return false;
							}
						},
						// The following options are only required, if we have more than one tree on one page:
			//				initId: "treeData",
						cookieId: "dynatree-Cb3",
						idPrefix: "dynatree-Cb3-"
					});
			
					$("#tree2").dynatree({
						checkbox: true,
						selectMode: 3,
						//children: treeData2,
						onActivate: function(node) {
						$("#echoSelection2").text(node.data.key);
							scenarioData = node.data.key;
						},
						onSelect: function(select, node) {
							// Get a list of all selected nodes, and convert to a key array:
							var selKeys = $.map(node.tree.getSelectedNodes(), function(node){
								return node.data.key;
							});
							$("#echoSelection2").text(selKeys.join(", "));
							scenarioData = selKeys.join(", ");
							// Get a list of all selected TOP nodes
							var selRootNodes = node.tree.getSelectedNodes(true);
							// ... and convert to a key array:
							var selRootKeys = $.map(selRootNodes, function(node){
								return node.data.key;
							});
							$("#echoSelectionRootKeys2").text(selRootKeys.join(", "));
							
							$("#echoSelectionRoots2").text(selRootNodes.join(", "));
						},
						onDblClick: function(node, event) {
							node.toggleSelect();
						},
						onKeydown: function(node, event) {
							if( event.which == 32 ) {
								node.toggleSelect();
								return false;
							}
						},
						// The following options are only required, if we have more than one tree on one page:
			//				initId: "treeData",
						cookieId: "dynatree-Cb2",
						idPrefix: "dynatree-Cb2-"
					});
			

					$("#tree4").dynatree({
						checkbox: true,
						selectMode: 3,
						//children: treeData2,
						onActivate: function(node) {
						$("#echoSelection4").text(node.data.key);
							modelData = node.data.key;
						},
						onSelect: function(select, node) {
							// Get a list of all selected nodes, and convert to a key array:
							var selKeys = $.map(node.tree.getSelectedNodes(), function(node){
								return node.data.key;
							});
							$("#echoSelection4").text(selKeys.join(", "));
							modelData = selKeys.join(", ");
							// Get a list of all selected TOP nodes
							var selRootNodes = node.tree.getSelectedNodes(true);
							// ... and convert to a key array:
							var selRootKeys = $.map(selRootNodes, function(node){
								return node.data.key;
							});
							$("#echoSelectionRootKeys4").text(selRootKeys.join(", "));
							$("#echoSelectionRoots4").text(selRootNodes.join(", "));
							
						},
						onDblClick: function(node, event) {
							node.toggleSelect();
						},
						onKeydown: function(node, event) {
							if( event.which == 32 ) {
								node.toggleSelect();
								return false;
							}
						},
						// The following options are only required, if we have more than one tree on one page:
			//				initId: "treeData",
						cookieId: "dynatree-Cb4",
						idPrefix: "dynatree-Cb4-"
					});
						
					$("#tree1").dynatree({
						checkbox: false,
						selectMode: 3,
						//children: treeData1,
						onActivate: function(node) {
							$("#echoActive").text(node.data.key);
							variableData = node.data.key;
							$("#tree1").dynatree("disable");
							tfrm = document.getElementById('result1');
							//alert('SeriesData.html?region='+regionData+'&scenario='+modelData+'&variable='+variableData);
							//tfrm.src = 'SeriesData.html?region='+regionData+'&scenario='+scenarioData+'&variable='+variableData+'&model='+modelData;
							
							 if (window.XMLHttpRequest) {
					            // code for IE7+, Firefox, Chrome, Opera, Safari
					            xmlhttp = new XMLHttpRequest();
					        } else {
					            // code for IE6, IE5
					            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
					        }
					        xmlhttp.onreadystatechange = function() {
					            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					                document.getElementById("series_data_display").innerHTML = xmlhttp.responseText;
					            }
					        };
					        xmlhttp.open("GET","SeriesData.html?region="+regionData+"&scenario="+scenarioData+"&variable="+variableData+"&model="+modelData,true);
					        xmlhttp.send();
							
							
							
							$("#tree1").dynatree("enable");
							
						},
						onDeactivate: function(node) {
							$("#echoActive").text("-");
						},
									
						// The following options are only required, if we have more than one tree on one page:
						//	initId: "treeData",
						cookieId: "dynatree-Cb1",
						idPrefix: "dynatree-Cb1-"
					});
				});
			</script>	 
			
    </head>
    <body>
        <s:include value="includes/menu.jsp" />
           <div class="slider-2-container">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-10 col-sm-offset-1 slider-2-text wow fadeInUp" style="text-align: left">
                       <div class="row">
		            	<div class="col-sm-3" >
			            	<div class="service wow fadeInDown">
			            	 <div class="form-group1">
							   	<h3> Regions: </h3>
							    <div id="tree3" class="tree-overflow"></div>
								<div>Selected keys: <span id="echoSelection3">-</span></div>
			            	 </div>
			            	</div>
		            	</div>
		            	
		            	<div class="col-sm-3">
			            	<div class="service wow fadeInDown" >
			            	 <div class="form-group1">
							   	<h3> Model: </h3>
							    <div id="tree4" class="tree-overflow">
							    	<ul>
					           			<li id="" class="folder">Model
					               			<ul>
							    				<s:iterator value="modelList">  
													<li id='<s:property />'>  <s:property /> </li>  
										 		</s:iterator>
							                </ul>
							    		</li>
							       	</ul>
							    </div>
								<div>Selected keys: <span id="echoSelection4">-</span></div>
			            	 </div>
			            	</div>
		            	</div>
		            	<div class="col-sm-3">
			            	<div class="service wow fadeInDown">
			            	 <div class="form-group1">
							   	<h3> Scenarios: </h3>
							    <div id="tree2" class="tree-overflow">
							    	<ul>
					           			<li id="" class="folder">Scenarios
					               			<ul>
							    				<s:iterator value="scenarioList">  
													<li id='<s:property />'>  <s:property /> </li>  
										 		</s:iterator>
							                </ul>
					        		</ul>
							    </div>
								<div>Selected keys: <span id="echoSelection2">-</span></div>
			            	 </div>
			            	</div>
		            	</div>
		            	
		            	<div class="col-sm-3">
			            	<div class="service wow fadeInDown">
			            	 <div class="form-group1">
							   	<h3> Variable : </h3>
							    <div id="tree1" class="tree-overflow">
							    
							   <s:property value="variableTree" escape="false" /> 
							    	<%-- <ul>
							           <li id="" class="folder">Variables
							                <ul>
									    		<s:iterator value="variableList">  
													<li id='<s:property />'>  <s:property /> </li>  
												 </s:iterator>
							                </ul>
							        </ul> --%>
							    </div>
								<div>Selected keys: <span id="echoActive">-</span></div>
			            	 </div>
			            	</div>
		            	</div>
	          			</div> 
                    </div>
                </div>

 				<div class="row">
						<div class="col-sm-10 col-sm-offset-1">
							<div id="series_data_display"></div>
						</div>
		       	</div>
                
            	
            </div>
        </div>
			

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                	<div class="col-sm-12 wow fadeIn">
                		<div class="footer-border"></div>
                	</div>
                </div>
                <div class="row">
                    <div class="col-sm-7 footer-copyright wow fadeIn">
                        <p>Copyright - All rights reserved. 
                    </div>
                    <div class="col-sm-5 footer-social wow fadeIn">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Javascript -->
       <!--  <script src="/assets/js/jquery-1.11.1.min.js"></script> -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/flexslider/jquery.flexslider-min.js"></script>
        <script src="assets/js/jflickrfeed.min.js"></script>
        <script src="assets/js/masonry.pkgd.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="assets/js/jquery.ui.map.min.js"></script>
       <%--  <script src="assets/js/scripts.js"></script> --%>
        <script src="assets/js/jquery.treeView.js"></script> 
    </body>
</html>