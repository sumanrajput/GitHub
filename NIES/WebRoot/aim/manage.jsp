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
		
		   
		<script type="text/javascript">
	        $(document).ready(function () {
	            $("#scenario_01").dataTable({
	                responsive: true
	            });
	            
	            $("#scenario_02").dataTable({
	                responsive: true
	            });
	            
	             
	        });
        </script> 	
        
    </head>
    <body>
        <s:include value="includes/menu.jsp" />
          <!-- Page Title -->
        <div class="page-title-container">
            <div class="container main-top-margin">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn">
                       
                    </div>
                </div>
            </div>
        </div>

          <!-- Services -->
             <div class="services-container">
	        	<div class="container">
		            <div class="row">
		            	<div class="col-sm-12">
		            	<div class="service wow fadeInDown">
		            	 <div class="form-group">
						    
						    
						    
						    
							<div class="header">							
					            <h3>File upload</h3>
					          </div>
					          <div class="content">
					          		<div class="alert alert-error" style="font:bold; color:red">
					          			<s:actionerror class="alert alert-error" />
									<s:fielderror class="alert alert-error"/>
					          		</div>
					          
					          		
					              <s:form class="form-horizontal group-border-dashed" action="doUpload.html" method="POST" enctype="multipart/form-data">
					              <div class="form-group">
					                <label class="col-sm-3 control-label">Upload data file : </label>
					                <div class="col-sm-6">
					                  <s:file name="upload" label="file"/>
					                   <s:submit  class="btn btn-primary" value="Upload" />
					                </div>
					              </div>
					              <div class="form-group">
					                <div class="col-sm-offset-2 col-sm-10">
					                 
					                </div>
					              </div>
					            </s:form>
					          </div>
						    
						    
						    
						    <p class="help-block">Upload only .xls and .xlsx file format.</p>
						    
						    
						    
						    
						    
						  </div>
		            	 </div>
		            	</div>
		            </div>
		            
		            
		            
				        
		            <div class="row">
		            	<div class="col-sm-12">

			            	<div class="service wow fadeInDown " >
			            		<h3><strong>Model Scenario Details</strong></h3>
			            		<div id="container" style="margin: auto;">
						            <div id="demo_jui">
							          <table id="scenario_01" class="display" style="text-align:left;">
							                <thead>
							                    <tr>
							                    	 <th> Sr. No. </th>
							                         <th >Model</th>
							                         <th>Scenario</th>
							                         <th >Date</th>
							                         <th >uploaded By</th>
							                         <th> Actions </th>
							                    </tr>
							                </thead>
							                <tbody >
							                	<s:iterator status="stat" value="scenarioReport">
													<tr class="gradeA">
														<td>	<s:property value="tableIndex"/> </td>
							                			<td>	<s:property value="model"/>	</td>
							                			<td>	<s:property value="scenario" /> </td>
							                			<td>	<s:property value="dateTime"/> </td>
							                			<td>	<s:property value="uploadedBy"/>	</td>
							                			<td>	<s:property value="link"  escape="false"/> </td>
							                		</tr>
							                		
							                	</s:iterator>
							                </tbody>
							          </table>
							          <br>
						         	</div>
						        </div>
			            		
			            		<%-- <display:table class="table" id="bank_details" name="scenarioReport" requestURI="/manage.html" cellpadding="3" export="true"  pagesize="10">
						         <display:caption media="html">
						    		<strong>Model Scenario Details</strong>
						    	 </display:caption>
						    		<display:setProperty name="export.pdf" value="true"/>
									<display:setProperty name="export.excel" value="true"/>
									<display:setProperty name="export.cvs" value="true"/>
						            <display:column property="tableIndex" title="Sr. No." style="text-align: left"/>
									<display:column property="model" title="Model" sortable="true" headerClass="sortable" style="text-align: center" />
									<display:column property="scenario" title="Scenario" style="text-align: left" />
									<display:column property="dateTime" title="Date" style="text-align: left"/>
									<display:column property="uploadedBy" title="uploaded By" style="text-align: left"/>
									<display:column property="link" title="Actions" media="html" style="text-align: center"/>
								</display:table>  --%>
			            	
			            	</div>
		            	</div>
		            </div>
	            	
	            	<div class="row">
		            	<div class="col-sm-12">
		            		<div class="service wow fadeInDown">
		            			<h3><strong>Model Scenario Details</strong></h3>
			            		<div id="container" style="margin: auto;">
						            <div id="demo_jui">
							          <table id="scenario_02" class="display" style="text-align:left;">
							                <thead>
							                    <tr>
							                    	 <th>	Sr. No.		</th>
							                         <th>	Uploaded	</th>
							                         <th>	User		</th>
							                         <th>	Model		</th>
							                         <th>	Scenario	</th>
							                         <th>	Data File 	</th>
							                    </tr>
							                </thead>
							                <tbody>
							                	<s:iterator status="stat02" value="scenarioReport">
													<tr class="gradeA">
														<td>	<s:property value="tableIndex"/> </td>
							                			<td>	<s:property value="dateTime"/>	</td>
							                			<td>	<s:property value="uploadedBy" /> </td>
							                			<td>	<s:property value="model"/> </td>
							                			<td>	<s:property value="scenario"/>	</td>
							                			<td>	<s:property value="filePath"  escape="false"/> </td>
							                		</tr>
							                		
							                	</s:iterator>
							                </tbody>
							          </table>
							          <br>
						         	</div>
						        </div>
		            			
		            		</div>
		            	</div>
		            </div>
		            
					<%-- 	            	
	            	<div class="row">
		            	<div class="col-sm-12">
		            	<div class="service wow fadeInDown">
		            		
		            		<display:table class="table" id="bank_details" name="scenarioReport" requestURI="/manage.html" cellpadding="3" export="true"  pagesize="10">
					         <display:caption media="html">
					    		<strong>Model Scenario Details</strong>
					    	 </display:caption>
					    		<display:setProperty name="export.pdf" value="true"/>
								<display:setProperty name="export.excel" value="true"/>
								<display:setProperty name="export.cvs" value="true"/>
								<display:column property="tableIndex" title="Sr. No." style="text-align: left"/>
								<display:column property="dateTime" title="Uploaded" style="text-align: left"/>
								<display:column property="uploadedBy" title="User" style="text-align: left"/>
								<display:column property="model" title="Model" headerClass="sortable" style="text-align: center" />
								<display:column property="scenario" title="Scenario" style="text-align: left" />
								<display:column property="filePath" title="Data File" autolink="true" style="text-align: center" />
									 
								
							</display:table>
		            	 </div>
		            	</div>
		            </div>
		            
 					--%>		            
		            
		            
		            
		            
		            
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
       <!--  <script src="../assets/js/jquery-1.11.1.min.js"></script> -->
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
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
        <script src="assets/js/scripts.js"></script>
        <script src="assets/js/jquery.treeView.js"></script> 
    </body>
</html>