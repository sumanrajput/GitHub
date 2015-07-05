<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html>
<html lang="en">
<head>
<s:include value="includes/header.jsp" />
<s:head />
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="media/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="media/css/demo_table_jui.css" 	type="text/css">
<link rel="stylesheet" href="themes/smoothness/jquery-ui-1.8.4.custom.css" type="text/css">

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
		$("#scenario_01").dataTable({
			responsive : true
		});

		$("#scenario_02").dataTable({
			responsive : true
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
				<div class="col-sm-12 wow fadeIn"></div>
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
									<s:fielderror class="alert alert-error" />
								</div>
								<s:form class="form-horizontal group-border-dashed" action="doUpload.html" method="POST"
									enctype="multipart/form-data">
									<div class="form-group">
										<label class="col-sm-3 control-label">Upload data file: </label>
										<div class="col-sm-6">
											<s:file name="upload" label="file" />
											<s:submit class="btn btn-primary" value="Upload" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10"></div>
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
					<div class="box">
						
							<h3>Model Scenario Details</h3>
							<div class="btn-group">
							<a href="#" onClick="$('#scenario_01').tableExport({type:'excel',escape:'false'});">
											<img src='export/icons/xls.png' width='24px'> XLS
										</a>
								<!-- <button class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-bars"></i> Export Table Data
								</button>
								<ul class="dropdown-menu " role="menu">
									
									<li>
										<a href="#" onClick="$('#scenario_01').tableExport({type:'sql'});"> 
										<img src='export/icons/sql.png' width='24px'> SQL
										</a>
									</li>
									
									<li>
										<a href="#" onClick="$('#scenario_01').tableExport({type:'txt',escape:'false',ignoreColumn:'[5, 6]'});">
											<img src='export/icons/txt.png' width='24px'> TXT
										</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#" onClick="$('#scenario_01').tableExport({type:'excel',escape:'false'});">
											<img src='export/icons/xls.png' width='24px'> XLS
										</a>
									</li>
									<li>
										<a href="#" onClick="$('#scenario_01').tableExport({type:'doc',escape:'false',ignoreColumn:'[6]', htmlContent:'false'});">
											<img src='export/icons/word.png' width='24px'> Word
										</a>
									</li>
									
									
									<li>
										<a href="#" onClick="$('#scenario_01').tableExport({type:'pdf',escape:'false',ignoreColumn:'[6]', htmlContent:'false',pdfLeftMargin:20,pdfFontSize:14});">
											<img src='export/icons/pdf.png' width='24px'> PDF
										</a>
									</li>
								</ul> -->
							</div>
							<div class="box-body table-responsive" id='ptable'>
							<table id="scenario_01" class="table table-striped">
								<thead>
									<tr>
										<th>Sr. No.</th>
										<th>Model</th>
										<th>Scenario</th>
										<th>Date</th>
										<th>uploaded By</th>
										<th >Actions</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator status="stat" value="scenarioReport">
										<tr>
											<td><s:property value="tableIndex" /></td>
											<td><s:property value="model" /></td>
											<td><s:property value="scenario" /></td>
											<td><s:property value="dateTime" /></td>
											<td><s:property value="uploadedBy" /></td>
											<td><s:property value="link" escape="false" /></td>
										</tr>
									</s:iterator>
								</tbody>
							</table></div>
							<div></div>
						<!-- </div> -->
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
		
		<div class="row">
			<div class="col-sm-12">
			<div class="box">
						
							<h3>Model Scenario Details</h3>
							<div class="btn-group">
							<a href="#" onClick="$('#scenario_02').tableExport({type:'excel',escape:'false'});">
											<img src='export/icons/xls.png' width='24px'> XLS
										</a>
								<!-- <button class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-bars"></i> Export Table Data
								</button>
								<ul class="dropdown-menu " role="menu">
									
									<li>
										<a href="#" onClick="$('#scenario_02').tableExport({type:'sql'});"> 
										<img src='export/icons/sql.png' width='24px'> SQL
										</a>
									</li>
									
									<li>
										<a href="#" onClick="$('#scenario_02').tableExport({type:'txt',escape:'false',ignoreColumn:'[5, 6]'});">
											<img src='export/icons/txt.png' width='24px'> TXT
										</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#" onClick="$('#scenario_02').tableExport({type:'excel',escape:'false'});">
											<img src='export/icons/xls.png' width='24px'> XLS
										</a>
									</li>
									<li>
										<a href="#" onClick="$('#scenario_02').tableExport({type:'doc',escape:'false',ignoreColumn:'[6]', htmlContent:'false'});">
											<img src='export/icons/word.png' width='24px'> Word
										</a>
									</li>
									
									
									<li>
										<a href="#" onClick="$('#scenario_02').tableExport({type:'pdf',escape:'false',htmlContent:'false',pdfLeftMargin:20,pdfFontSize:14});">
											<img src='export/icons/pdf.png' width='24px'> PDF
										</a>
									</li>
								</ul> -->
							</div>
							<div class="box-body table-responsive" id='ptable'>
							<table id="scenario_02" class="table table-striped">
								<thead>
									<tr>
										<th>Sr. No.</th>
										<th>Uploaded</th>
										<th>User</th>
										<th>Model</th>
										<th>Scenario</th>
										<th>Data File</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator status="stat02" value="scenarioReport">
										<tr class="gradeA">
											<td><s:property value="tableIndex" /></td>
											<td><s:property value="dateTime" /></td>
											<td><s:property value="uploadedBy" /></td>
											<td><s:property value="model" /></td>
											<td><s:property value="scenario" /></td>
											<td><s:property value="filePath" escape="false" /></td>
										</tr>
									</s:iterator>
								</tbody>
							</table></div>
							<div></div>
						<!-- </div> -->
						<!-- /.box-body -->

					</div>
					<!-- /.box -->
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
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-pinterest"></i></a>
					</div>
				</div>
			</div>
		</footer>
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