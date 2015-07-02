<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

    <head>
    	<s:include value="includes/header.jsp" /> 
    	<s:head/>
    </head>
    <body>
        <s:include value="includes/menu.jsp" />

          <!-- Page Title -->
        <div class="page-title-container">
             <div class="container main-top-margin">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn">
                        <i class="fa fa-user"></i>
                        <h1>SSP Database (version 0.93) /</h1>
                        <p>Note that the community review of the SSP data has been completed in October 2012. The SSP data on this website has been updated since then and reflects changes from March 2013 in response to the reviewer comments. Please send any comments or questions to <a href='mailto:ssp-comments@iiasa.ac.at <ssp-comments@iiasa.ac.at>'>ssp-comments@iiasa.ac.at</a>.</p>
                    </div>
                </div>
            </div>
        </div>

         <!-- About Us Text -->
        <div class="about-us-container">
        	<div class="container">
	            <div class="row">
					 <div class="col-sm-3 about-us-text wow fadeInLeft">
						<div id="demo"></div>
	                   
	                </div>
					<div class="col-sm-3 about-us-text wow fadeInLeft">
											   <ul id="tree">
						<li>
						<label>
						<input type="checkbox" />
						Level 1 - 1</label>
						</li>
						<li>
						<label>
						<input type="checkbox" />
						Level 1 - 2</label>
						<ul>
						<li>
						<label>
						<input type="checkbox" />
						Level 2 - 1</label>
						<ul>
						<li>
						<label>
						<input type="checkbox" />
						Level 3 - 1</label>
						</li>
						<li>
						<label>
						<input type="checkbox" />
						Level 3 - 2</label>
						<ul>
						<li>
						<label>
						<input type="checkbox" />
						Level 4 - 1</label>
						</li>
						</ul>
						</li>
						</ul>
						</li>
						</ul>
						<li>
						<label>
						<input type="checkbox" />
						Level 1 - 3</label>
						</li>
						<li>
						<label>
						<input type="checkbox" />
						Level 1 - 4</label>
						</li>
						</li>
						</ul>

					</div>
	                <div class="col-sm-3 about-us-text wow fadeInLeft">
	                 <div id="jstree-proton-3">safa</div>
	                </div>
	                <div class="col-sm-3 about-us-text wow fadeInLeft">
	                    <h3>Introduction</h3>
	                    <p>
	                    	The SSP database aims at the documentation of quantitative projections of the so-called Shared Socioeconomic Pathways (SSPs) and related Integrated Assessment 
scenarios. The SSPs are part of a new framework that the climate change research community has adopted to facilitate the integrated analysis of future climate 
impacts, vulnerabilities, adaptation, and mitigation. Information about the scenario process and the SSP framework can be found in 
         </p>
	               
	


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
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/retina-1.1.0.min.js"></script>
        <script src="../assets/js/jquery.magnific-popup.min.js"></script>
        <script src="../assets/flexslider/jquery.flexslider-min.js"></script>
        <script src="../assets/js/jflickrfeed.min.js"></script>
        <script src="../assets/js/masonry.pkgd.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="../assets/js/jquery.ui.map.min.js"></script>
        <script src="../assets/js/scripts.js"></script>









		<script src="dist/js/file-tree.min.js"></script>
		<script src="dist/js/jstree.min.js"></script>

		<script type="text/javascript">
		
			$(document).ready(function(){
			var data = [{
			id: 'dir-1',
			name: 'Root',
			type: 'dir',
			children: [
			{
			id: 'dir-2',
			name: 'Sub_dir',
			type: 'dir',
			children: [{
			id: 'file-1',
			name: 'file-tree-master.zip',
			type: 'zip',
			url: '1.zip'
			}]
			},{
			id: 'file-2',
			name: 'File tree',
			type: 'zip',
			url: '2.zip'
			}
			]
			}];
			 
			$('#demo').fileTree({
			data: data,
			sortable: false,
			selectable: false
			});
			 

			
			});
		</script>

	
		<script src="dist/js/jquery-checktree.js"></script>
	
		<script>
		$('#tree').checktree();
		</script>
		
		

		<script>
		
			$(function() {
			  alert("Hi");
				$('#jstree-proton-3').jstree({
					'plugins': ["wholerow", "checkbox"],
					'core': {
						'data': [{
								"text": "Wholerow with checkboxes",
								"children": [{
									"text": "initially selected",
									"state": {
										"selected": true
									}
								}, {
									"text": "custom icon URL",
									"icon": "glyphicon glyphicon-tree-deciduous"
								}, {
									"text": "initially open",
									"state": {
										"opened": true
									},
									"children": ["Another node"]
								}, {
									"text": "custom icon class",
									"icon": "glyphicon glyphicon-leaf"
								}]
							},
							"And wholerow selection"
						],
						'themes': {
							'name': 'proton',
							'responsive': true
						}
					}
				});
			});
    </script>


    </body>

</html>