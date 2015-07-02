<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
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

       <!--  <link rel="stylesheet" href="selection/docs/css/bootstrap-example.css" type="text/css">
        <link rel="stylesheet" href="selection/docs/css/prettify.css" type="text/css"> -->

         <script type="text/javascript" src="admin/docs/js/jquery-2.1.4.min.js"></script> 
        <script type="text/javascript" src="admin/docs/js/bootstrap-3.3.2.min.js"></script>
        <script type="text/javascript" src="admin/docs/js/prettify.js"></script> 

        <link rel="stylesheet" href="admin/dist/css/bootstrap-multiselect.css" type="text/css">
        <script type="text/javascript" src="admin/dist/js/bootstrap-multiselect.js"></script>
        <script type="text/javascript" src="admin/dist/js/bootstrap-multiselect-collapsible-groups.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                window.prettyPrint() && prettyPrint();
            });
        </script>

	<script type="text/javascript">
    $(document).ready(function() {
        $('#example-post').multiselect({
            includeSelectAllOption: true,
            enableFiltering: true
        });
    });
    
    $(document).ready(function() {
        $('#regionId').multiselect({
            includeSelectAllOption: true,
            enableFiltering: true
        });
    });
    
    
</script>


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	    <![endif]-->

<!-- Custom styles for this template -->
<link href="admin/css/style.css" rel="stylesheet" />



<s:head />
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
					<li><a href="#">Mapping</a></li>
					<li class="active">Model Region</li>
				</ol>
			</div>
			<div class="cl-mcont">
				<div class="row">
					<div class="col-md-12">
						<div class="block-flat">
							<div class="header">
								<h3>User Description</h3>
							</div>
							<div class="content">
								<s:form class="form-horizontal group-border-dashed" action="new_model_region.html">
									<div class="form-group">
										<label class="col-sm-3 control-label">Model Id<span style="color:red;">*</span></label>
										<div class="col-sm-6">
											<s:select headerKey="" headerValue="Select Model" name="modelRegionVo.modelId" list="modelIdList" listKey="lookupId" listValue="lookupName" class="form-control" required="true" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">Region name<span style="color:red;">*</span></label>
										<div class="col-sm-6">
											<s:select headerKey="" id="regionId" name="modelRegionVo.regionId"
												list="regionList" listKey="lookupId" listValue="lookupName" class="form-control" required="true" multiple="true"  />
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">

											<s:if test="%{#request.id!=null}">
												<s:submit class="btn btn-primary" value=" Update >> " />
											</s:if>
											<s:else>
												<s:submit class="btn btn-primary" value=" Save >> " />
											</s:else>

											<s:reset class="btn btn-default" value="Reset >>" />
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
							<display:table id="bank_details" name="modelRegionList" requestURI="/model_region.html" cellpadding="3" export="true" pagesize="10">
								<display:caption media="html">
									<strong>Model Region Details</strong>
								</display:caption>
								<display:setProperty name="export.pdf" value="true" />
								<display:setProperty name="export.excel" value="true" />
								<display:setProperty name="export.cvs" value="true" />
								<display:column property="tableIndex" title="Sr. No." />
								<display:column property="modelId" title="Model Id" sortable="true" headerClass="sortable" />
								<display:column property="regionId" title="Region Id" sortable="true" headerClass="sortable" />
								<display:column property="regionName" title="Region name" />
								<display:column property="link" title="Actions" media="html" />
							</display:table>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript" src="admin/js/jquery.gritter/js/jquery.gritter.js"></script>

	<script type="text/javascript" src="admin/js/behaviour/general.js"></script>




	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript">
	
	
		$(document).ready(
				function() {
					//initialize the javascript
					App.init();
					

					$("table td .legend").each(function() {
						var el = $(this);
						var color = el.data("color");
						el.css("background", color);
					});

				});
	</script>
	


</body>
</html>
