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
    <!-- jquery Plugin for data export from table -->
<script type="text/javascript" src="export/tableExport.js"></script>
<script type="text/javascript" src="export/jquery.base64.js"></script>
<!-- Pdf export -->
<script type="text/javascript" src="export/html2canvas.js"></script>
<script type="text/javascript" src="export/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="export/jspdf/jspdf.js"></script>
<script type="text/javascript" src="export/jspdf/libs/base64.js"></script>
    	
    	
    	<script type="text/javascript">
	$(document).ready(function() {
		$("#series_data").dataTable({
			responsive : true
		});

		/* $("#scenario_02").dataTable({
			responsive : true
		}); */
	});
</script>
<s:head/>
    </head>
    <body>
       
          <!-- Page Title -->
          <!-- Services -->
        <div class="services-container">
	        <div class="container">
	            <div class="row">
	            <div class="col-sm-12">
					<div class="box">
							<h3>Model Scenario Details</h3>
							<div class="btn-group">
						
										<a href="#" onClick="$('#series_data').tableExport({type:'excel',escape:'false'});">
											<img src='export/icons/xls.png' width='24px'> XLS
										</a>
									
							
								<!-- <button class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-bars"></i> Export Table Data
								</button>
								<ul class="dropdown-menu " role="menu">
									
									<li>
										<a href="#" onClick="$('#series_data').tableExport({type:'sql'});"> 
										<img src='export/icons/sql.png' width='24px'> SQL
										</a>
									</li>
									
									<li>
										<a href="#" onClick="$('#series_data').tableExport({type:'txt',escape:'false',ignoreColumn:'[5, 6]'});">
											<img src='export/icons/txt.png' width='24px'> TXT
										</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#" onClick="$('#series_data').tableExport({type:'excel',escape:'false'});">
											<img src='export/icons/xls.png' width='24px'> XLS
										</a>
									</li>
									<li>
										<a href="#" onClick="$('#series_data').tableExport({type:'doc',escape:'false',ignoreColumn:'[6]', htmlContent:'false'});">
											<img src='export/icons/word.png' width='24px'> Word
										</a>
									</li>
									
									
									<li>
										<a href="#" onClick="$('#series_data').tableExport({type:'pdf',escape:'false',ignoreColumn:'[6]', htmlContent:'false',pdfLeftMargin:20,pdfFontSize:14});">
											<img src='export/icons/pdf.png' width='24px'> PDF
										</a>
									</li>
								</ul> -->
							</div>
							<div class="box-body table-responsive" id='ptable'>
	                 
	           <table class="table table-striped" id="series_data">
	          	<thead>
									<tr>
	           		<th>	Model	</th>
	           		<th>	Scenario	</th>
	           		<th>	Region	</th>
	           		<th>	Variable	</th>
	           		<th>	Unit	</th>	
	           		
	           		<s:iterator status="year" value="year">
	           			<th>	<s:property/>	</th>		
	           		</s:iterator>
	           	</tr>
	           	</thead>
	           	<tbody>
	            <s:iterator status="stat" value="seriesDataReport">
	           		<tr>
	           			<td >	<s:property value="model"/>	</td>
	           			<td>	<s:property value="scenario" />	</td>
	           			<td>	<s:property value="Region"/>	</td>
	           			<td>	<s:property value="variable"/>	</td>
	           			<td>	<s:property value="unit"/>	</td>
	           			 <s:property value="yyVal" escape="false"/> 
	           		</tr>
	            </s:iterator>
	            </tbody>
	           </table> 
	            </div>
							<div></div>
						<!-- </div> -->
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
	            	
	            </div>
	        </div> 
        </div>

			 
<br/>
        <!-- Footer -->
        <!-- Javascript -->
		<%-- <script src="assets/js/jquery-1.11.1.min.js"></script>  --%>
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
		<script src="assets/js/scripts.js"></script>
		<script src="assets/js/jquery.treeView.js"></script>

    </body>

</html>