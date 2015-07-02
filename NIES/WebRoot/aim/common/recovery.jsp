<%@taglib uri="/struts-tags" prefix="s" %>  
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>NIES - National Institute for Environmental Studies</title>
	<meta name="description" content="NIES">
	<meta name="author" content="IGSA">
	<meta name="keyword" content="NIES, AIM">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="aim/common/dist/css/bootstrap.min.css" rel="stylesheet">
	<link id="base-style" href="aim/common/css/style.css" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="assets/ico/favicon.ico">
	<!-- end: Favicon -->
	
			<style type="text/css">
			body { background: url(aim/common/img/bg-login.jpg) !important; }
		</style>
</head>
<body>
		<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="login-box">
					<div class="icons">
						<a href="index.html"><i class="glyphicon glyphicon-home"></i></a>
						<a href="login.html"><i class="glyphicon glyphicon-cog"></i></a>
					</div>
					<s:if test="%{#session['eMailID']!=null}">
						<div class="row">
							<div class="messages error" style="padding-left:20px;padding-right: 20px;">
								<div class="panel panel-default"><div class="panel-body">	
								<ul class='list-unstyled text-success' style='line-height: 30px;color: #0F9411;'>
									<li>RESET PASSWORD REQUEST</li>
									<li>We have sent an email to your email id <strong><s:property value="#session['eMailID']" /></strong>. </li>
									<li>Go Back<a href="login.html"> Login </a></li> 
								</ul>
								</div></div>
							</div>
						</div>
					</s:if>
				</div><!--/span-->
			</div><!--/row-->
			

	</div><!--/.fluid-container-->
	
		</div><!--/fluid-row-->
	
	
	<!-- end: JavaScript-->
	
</body>
</html>
