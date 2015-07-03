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
					{title: "Regions;", isFolder: true,
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
							tfrm.src = 'SeriesData.html?region='+regionData+'&scenario='+scenarioData+'&variable='+variableData+'&model='+modelData;
							
							tfrm.contentWindow.focus();
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
							    
							    
							    <ul> <li class="folder" >Variable
									<ul> <li class="folder" >  Concentration
				<ul> 
					<li id="CH4" >CH4</li> 
					<li id="CO2" >CO2</li> 
					<li id="N2O" >N2O</li>
				</ul>
					<li  class="folder" >Emissions
						<ul> <li class="folder" >BC
							<ul> <li class="folder" >Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  class="folder" >    CH4
		<ul> <li id="Land_Use" >      Land_Use
		</li></ul><li  class="folder" >    CO2
		<ul> <li class="folder" >      Carbon_Capture_and_Storage
		<ul> <li id="Biomass" >        Biomass
		</li></ul><li  class="folder" >      Fossil_Fuels_and_Industry
		<ul> <li class="folder" >        Energy_Demand
		<ul> <li id="Industry" >          Industry
		</li> <li id="Other_Sector" >          Other_Sector
		</li> <li id="Residential_and_Commercial" >          Residential_and_Commercial
		</li> <li id="Transportation" >          Transportation
		</li></ul><li  class="folder" >        Energy_Supply
		<ul> <li id="Electricity" >          Electricity
		</li></ul><li  id="Energy_Demand" >        Energy_Demand
		</li> <li id="Energy_Supply" >        Energy_Supply
		</li></ul><li  id="Carbon_Capture_and_Storage" >      Carbon_Capture_and_Storage
		</li> <li id="Fossil_Fuels_and_Industry" >      Fossil_Fuels_and_Industry
		</li> <li id="Land_Use" >      Land_Use
		</li></ul><li  class="folder" >    CO
		<ul> <li class="folder" >      Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  class="folder" >    GHG
		<ul> <li id="Allowance_Allocation" >      Allowance_Allocation
		</li> <li id="International_Trading_System" >      International_Trading_System
		</li></ul><li  class="folder" >    N2O
		<ul> <li id="Land_Use" >      Land_Use
		</li></ul><li  class="folder" >    NH3
		<ul> <li class="folder" >      Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  class="folder" >    NOx
		<ul> <li class="folder" >      Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  class="folder" >    OC
		<ul> <li class="folder" >      Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  class="folder" >    Sulfur
		<ul> <li class="folder" >      Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  class="folder" >    VOC
		<ul> <li class="folder" >      Energy_Demand
		<ul> <li class="folder" >        Transportation
		<ul> <li id="Aviation" >          Aviation
		</li> <li id="Ground_Transportation" >          Ground_Transportation
		</li> <li id="International_Shipping" >          International_Shipping
		</li></ul><li  id="Industry" >        Industry
		</li> <li id="Residential_and_Commercial" >        Residential_and_Commercial
		</li> <li id="Transportation" >        Transportation
		</li></ul><li  class="folder" >      Land_Use
		<ul> <li id="Agricultural_Waste_Burning" >        Agricultural_Waste_Burning
		</li> <li id="Agriculture" >        Agriculture
		</li> <li id="Forest_Burning" >        Forest_Burning
		</li> <li id="Savannah_Burning" >        Savannah_Burning
		</li></ul><li  id="Energy_Supply" >      Energy_Supply
		</li> <li id="Energy_Supply_and_Demand" >      Energy_Supply_and_Demand
		</li> <li id="Land_Use" >      Land_Use
		</li> <li id="Other" >      Other
		</li> <li id="Solvents" >      Solvents
		</li> <li id="Waste" >      Waste
		</li></ul><li  id="BC" >    BC
		</li> <li id="CH4" >    CH4
		</li> <li id="CO" >    CO
		</li> <li id="CO2" >    CO2
		</li> <li id="F-Gases" >    F-Gases
		</li> <li id="Kyoto_Gases" >    Kyoto_Gases
		</li> <li id="N2O" >    N2O
		</li> <li id="NH3" >    NH3
		</li> <li id="NOx" >    NOx
		</li> <li id="OC" >    OC
		</li> <li id="Sulfur" >    Sulfur
		</li> <li id="VOC" >    VOC
		</li></ul><li  id="Energy_Service" >  Energy_Service
		<ul> <li class="folder" >    Residential_and_Commercial
		<ul> <li id="Floor_Space" >      Floor_Space
		</li></ul><li  class="folder" >    Transportation
		<ul> <li id="Freight" >      Freight
		</li> <li id="Passenger" >      Passenger
		</li></ul><li  class="folder" >  Fertilizer_Use
		<ul> <li id="Nitrogen" >    Nitrogen
		</li> <li id="Phosphorus" >    Phosphorus
		</li></ul><li  class="folder" >  Final_Energy
		<ul> <li class="folder" >    Industry
		<ul> <li class="folder" >      Solids
		<ul> <li id="Biomass" >        Biomass
		</li> <li id="Coal" >        Coal
		</li></ul><li  id="Electricity" >      Electricity
		</li> <li id="Gases" >      Gases
		</li> <li id="Heat" >      Heat
		</li> <li id="Hydrogen" >      Hydrogen
		</li> <li id="Liquids" >      Liquids
		</li> <li id="Other" >      Other
		</li> <li id="Solids" >      Solids
		</li></ul><li  class="folder" >    Other_Sector
		<ul> <li id="Electricity" >      Electricity
		</li> <li id="Gases" >      Gases
		</li> <li id="Heat" >      Heat
		</li> <li id="Hydrogen" >      Hydrogen
		</li> <li id="Liquids" >      Liquids
		</li> <li id="Other" >      Other
		</li> <li id="Solids" >      Solids
		</li></ul><li  class="folder" >    Residential_and_Commercial
		<ul> <li class="folder" >      Solids
		<ul> <li id="Biomass" >        Biomass
		</li> <li id="Coal" >        Coal
		</li></ul><li  id="Electricity" >      Electricity
		</li> <li id="Gases" >      Gases
		</li> <li id="Heat" >      Heat
		</li> <li id="Hydrogen" >      Hydrogen
		</li> <li id="Liquids" >      Liquids
		</li> <li id="Other" >      Other
		</li> <li id="Solids" >      Solids
		</li> <li id="Space_Heating" >      Space_Heating
		</li></ul><li  class="folder" >    Solids
		<ul> <li class="folder" >      Biomass
		<ul> <li id="Traditional" >        Traditional
		</li></ul><li  id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li></ul><li  class="folder" >    Transportation
		<ul> <li class="folder" >      Liquids
		<ul> <li id="Biomass" >        Biomass
		</li> <li id="Coal" >        Coal
		</li> <li id="Natural_Gas" >        Natural_Gas
		</li> <li id="Oil" >        Oil
		</li></ul><li  id="Electricity" >      Electricity
		</li> <li id="Freight" >      Freight
		</li> <li id="Gases" >      Gases
		</li> <li id="Hydrogen" >      Hydrogen
		</li> <li id="Liquids" >      Liquids
		</li> <li id="Other" >      Other
		</li> <li id="Passenger" >      Passenger
		</li></ul><li  id="Electricity" >    Electricity
		</li> <li id="Gases" >    Gases
		</li> <li id="Geothermal" >    Geothermal
		</li> <li id="Heat" >    Heat
		</li> <li id="Hydrogen" >    Hydrogen
		</li> <li id="Industry" >    Industry
		</li> <li id="Liquids" >    Liquids
		</li> <li id="Other" >    Other
		</li> <li id="Other_Sector" >    Other_Sector
		</li> <li id="Residential_and_Commercial" >    Residential_and_Commercial
		</li> <li id="Solar" >    Solar
		</li> <li id="Solids" >    Solids
		</li> <li id="Transportation" >    Transportation
		</li></ul><li  class="folder" >  Food_Energy_Demand
		<ul> <li id="Livestock_" >    Livestock_
		</li></ul><li  class="folder" >  Forcing
		<ul> <li class="folder" >    Aerosol
		<ul> <li id="BC" >      BC
		</li> <li id="OC" >      OC
		</li> <li id="Other" >      Other
		</li> <li id="Sulfate_Direct" >      Sulfate_Direct
		</li></ul><li  id="Aerosol" >    Aerosol
		</li> <li id="AN3A" >    AN3A
		</li> <li id="CH4" >    CH4
		</li> <li id="CO2" >    CO2
		</li> <li id="F-Gases" >    F-Gases
		</li> <li id="Kyoto_Gases" >    Kyoto_Gases
		</li> <li id="N2O" >    N2O
		</li> <li id="Other" >    Other
		</li></ul><li  class="folder" >  GDP
		<ul> <li id="MER" >    MER
		</li> <li id="PPP" >    PPP
		</li></ul><li  class="folder" >  Investment
		<ul> <li class="folder" >    Energy_Demand
		<ul> <li class="folder" >      Industry
		<ul> <li id="Efficiency_and_Decarbonization" >        Efficiency_and_Decarbonization
		</li></ul><li  class="folder" >      Residential_and_Commercial
		<ul> <li id="Efficiency_and_Decarbonization" >        Efficiency_and_Decarbonization
		</li></ul><li  class="folder" >      Transportation
		<ul> <li id="Efficiency_and_Decarbonization" >        Efficiency_and_Decarbonization
		</li></ul><li  id="Efficiency_and_Decarbonization" >      Efficiency_and_Decarbonization
		</li></ul><li  class="folder" >    Energy_Supply
		<ul> <li id="Electricity" >      Electricity
		</li></ul><li  id="Energy_Supply" >    Energy_Supply
		</li></ul><li  class="folder" >  Land_Cover
		<ul> <li class="folder" >    Cropland
		<ul> <li class="folder" >      Energy_Crops
		<ul> <li id="Irrigated" >        Irrigated
		</li></ul><li  id="Energy_Crops" >      Energy_Crops
		</li> <li id="Irrigated" >      Irrigated
		</li></ul><li  class="folder" >    Forest
		<ul> <li id="Managed" >      Managed
		</li></ul><li  id="Cropland" >    Cropland
		</li> <li id="Forest" >    Forest
		</li> <li id="Other_Arable_Land" >    Other_Arable_Land
		</li> <li id="Other_Land" >    Other_Land
		</li> <li id="Pasture" >    Pasture
		</li></ul><li  class="folder" >  Policy_Cost
		<ul> <li id="Additional_Total_Energy_System_Cost" >    Additional_Total_Energy_System_Cost
		</li> <li id="Area_under_MAC_Curve" >    Area_under_MAC_Curve
		</li> <li id="Consumption_Loss" >    Consumption_Loss
		</li> <li id="Equivalent_Variation" >    Equivalent_Variation
		</li> <li id="GDP_Loss" >    GDP_Loss
		</li> <li id="Other" >    Other
		</li></ul><li  class="folder" >  Population
		<ul> <li id="Urban" >    Urban
		</li></ul><li  class="folder" >  Price
		<ul> <li id="Agriculture" >    Agriculture
		<ul> <li class="folder" >      Non-Energy_Crops
		<ul> <li id="Index" >        Index
		</li></ul><li  class="folder" >    Primary_Energy
		<ul> <li id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li> <li id="Gas" >      Gas
		</li> <li id="Oil" >      Oil
		</li></ul><li  class="folder" >    Secondary_Energy
		<ul> <li class="folder" >      Liquids
		<ul> <li id="Biomass" >        Biomass
		</li></ul><li  id="Electricity" >      Electricity
		</li></ul><li  id="Carbon" >    Carbon
		</li></ul><li  class="folder" >  Primary_Energy
		<ul> <li class="folder" >    Biomass
		<ul> <li class="folder" >      w
		<ul> <li id="_CCS" >        _CCS
		</li> <li id="o_CCS" >        o_CCS
		</li></ul><li  id="1st_Generation" >      1st_Generation
		</li> <li id="Energy_Crops" >      Energy_Crops
		</li> <li id="Modern" >      Modern
		</li> <li id="Other" >      Other
		</li> <li id="Residues" >      Residues
		</li> <li id="Traditional" >      Traditional
		</li></ul><li  id="Coal" >    Coal
		<ul> <li class="folder" >      w
		<ul> <li id="_CCS" >        _CCS
		</li> <li id="o_CCS" >        o_CCS
		</li></ul><li  id="Fossil" >    Fossil
		<ul> <li class="folder" >      w
		<ul> <li id="_CCS" >        _CCS
		</li> <li id="o_CCS" >        o_CCS
		</li></ul><li  id="Gas" >    Gas
		<ul> <li class="folder" >      w
		<ul> <li id="_CCS" >        _CCS
		</li> <li id="o_CCS" >        o_CCS
		</li></ul><li  id="Oil" >    Oil
		<ul> <li class="folder" >      w
		<ul> <li id="_CCS" >        _CCS
		</li> <li id="o_CCS" >        o_CCS
		</li></ul><li  id="Biomass" >    Biomass
		</li> <li id="Coal" >    Coal
		</li> <li id="Fossil" >    Fossil
		</li> <li id="Gas" >    Gas
		</li> <li id="Geothermal" >    Geothermal
		</li> <li id="Hydro" >    Hydro
		</li> <li id="Non-Biomass_Renewables" >    Non-Biomass_Renewables
		</li> <li id="Nuclear" >    Nuclear
		</li> <li id="Ocean" >    Ocean
		</li> <li id="Oil" >    Oil
		</li> <li id="Other" >    Other
		</li> <li id="Secondary_Energy_Trade" >    Secondary_Energy_Trade
		</li> <li id="Solar" >    Solar
		</li> <li id="Wind" >    Wind
		</li></ul><li  id="Resource" >  Resource
		<ul> <li class="folder" >    Cumulative_Extraction
		<ul> <li class="folder" >      Gas
		<ul> <li id="Conventional" >        Conventional
		</li> <li id="Unconventional" >        Unconventional
		</li></ul><li  class="folder" >      Oil
		<ul> <li id="Conventional" >        Conventional
		</li> <li id="Unconventional" >        Unconventional
		</li></ul><li  id="Coal" >      Coal
		</li> <li id="Gas" >      Gas
		</li> <li id="Oil" >      Oil
		</li> <li id="Uranium" >      Uranium
		</li></ul><li  class="folder" >  Secondary_Energy
		<ul> <li class="folder" >    Electricity
		<ul> <li id="Biomass" >      Biomass
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Coal" >      Coal
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Gas" >      Gas
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Oil" >      Oil
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  class="folder" >      Solar
		<ul> <li id="CSP" >        CSP
		</li> <li id="PV" >        PV
		</li></ul><li  class="folder" >      Wind
		<ul> <li id="Offshore" >        Offshore
		</li> <li id="Onshore" >        Onshore
		</li></ul><li  id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li> <li id="Gas" >      Gas
		</li> <li id="Geothermal" >      Geothermal
		</li> <li id="Hydro" >      Hydro
		</li> <li id="Non-Biomass_Renewables" >      Non-Biomass_Renewables
		</li> <li id="Nuclear" >      Nuclear
		</li> <li id="Ocean" >      Ocean
		</li> <li id="Oil" >      Oil
		</li> <li id="Other" >      Other
		</li> <li id="Solar" >      Solar
		</li> <li id="Wind" >      Wind
		</li></ul><li  class="folder" >    Gases
		<ul> <li id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li> <li id="Natural_Gas" >      Natural_Gas
		</li> <li id="Other" >      Other
		</li></ul><li  class="folder" >    Heat
		<ul> <li id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li> <li id="Gas" >      Gas
		</li> <li id="Geothermal" >      Geothermal
		</li> <li id="Nuclear" >      Nuclear
		</li> <li id="Oil" >      Oil
		</li> <li id="Other" >      Other
		</li> <li id="Solar" >      Solar
		</li></ul><li  class="folder" >    Hydrogen
		<ul> <li id="Biomass" >      Biomass
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Coal" >      Coal
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Gas" >      Gas
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li> <li id="Electricity" >      Electricity
		</li> <li id="Gas" >      Gas
		</li> <li id="Nuclear" >      Nuclear
		</li> <li id="Other" >      Other
		</li> <li id="Solar" >      Solar
		</li></ul><li  class="folder" >    Liquids
		<ul> <li class="folder" >      Biomass
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="1st_Generation" >        1st_Generation
		</li> <li id="Energy_Crops" >        Energy_Crops
		</li> <li id="Other" >        Other
		</li> <li id="Residues" >        Residues
		</li></ul><li  id="Coal" >      Coal
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Fossil" >      Fossil
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Gas" >      Gas
		<ul> <li class="folder" >        w
		<ul> <li id="_CCS" >          _CCS
		</li> <li id="o_CCS" >          o_CCS
		</li></ul><li  id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li> <li id="Fossil" >      Fossil
		</li> <li id="Gas" >      Gas
		</li> <li id="Oil" >      Oil
		</li> <li id="Other" >      Other
		</li></ul><li  class="folder" >    Solids
		<ul> <li id="Biomass" >      Biomass
		</li> <li id="Coal" >      Coal
		</li></ul><li  id="Electricity" >    Electricity
		</li> <li id="Gases" >    Gases
		</li> <li id="Heat" >    Heat
		</li> <li id="Hydrogen" >    Hydrogen
		</li> <li id="Liquids" >    Liquids
		</li> <li id="Solids" >    Solids
		</li></ul><li  class="folder" >  Trade
		<ul> <li class="folder" >    Emissions_Allowances
		<ul> <li id="Value" >      Value
		</li> <li id="Volume" >      Volume
		</li></ul><li  id="Primary_Energy" >    Primary_Energy
		<ul> <li class="folder" >      Biomass
		<ul> <li id="Volume" >        Volume
		</li></ul><li  class="folder" >      Coal
		<ul> <li id="Volume" >        Volume
		</li></ul><li  class="folder" >      Gas
		<ul> <li id="Volume" >        Volume
		</li></ul><li  class="folder" >      Oil
		<ul> <li id="Volume" >        Volume
		</li></ul><li  id="Secondary_Energy" >    Secondary_Energy
		<ul> <li class="folder" >      Electricity
		<ul> <li id="Volume" >        Volume
		</li></ul><li  id="Solids_and_Liquids" >      Solids_and_Liquids
		<ul> <li class="folder" >        Biomass
		<ul> <li id="Volume" >          Volume
		</li></ul><li  id="All" >    All
		</li></ul><li  id="Water" >  Water
		<ul> <li class="folder" >    Withdrawal
		<ul> <li id="Irrigation" >      Irrigation
		</li></ul><li  class="folder" >  Yield
		<ul> <li id="cereal" >    cereal
		</li></ul><li  id="Consumption" >  Consumption
		</li> <li id="Final_Energy" >  Final_Energy
		</li> <li id="Food_Energy_Demand" >  Food_Energy_Demand
		</li> <li id="Forcing" >  Forcing
		</li> <li id="fsfsffd" >  fsfsffd
		</li> <li id="Land_Cover" >  Land_Cover
		</li> <li id="Population" >  Population
		</li> <li id="Primary_Energy" >  Primary_Energy
		</li> <li id="Secondary_Energy" >  Secondary_Energy
		</li> <li id="tesrting" >  tesrting
							    
							    
							    
							    
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
						<div class="col-sm-10 col-sm-offset-1 slider-2-text">
							<iframe src="" id="result1" style="zoom:0.60" width="99%" height="350" ></iframe>
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