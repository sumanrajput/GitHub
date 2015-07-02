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
						<a href="#"><i class="glyphicon glyphicon-cog"></i></a>
					</div>
					<h3>Login to your account</h3>
					<div style="font:bold;color:red">
							    <s:fielderror/> 	 	
				                <s:actionerror/>
				                <s:actionmessage/>
						</div><br/>
					
					<s:form class="form-horizontal" action="log-on.html">
						<fieldset style="padding-left: 30px;padding-right: 20px;">
						 <div class="form-group has-feedback" title="userid">
								<s:textfield class="form-control" name="userId" id="userId" placeholder="type username"/>
								<span class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="clearfix"></div><br/>

							<div class="form-group has-feedback" title="Password">
								<s:password class="form-control" name="password" id="password" placeholder="type password"/>
								<span class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
							<div class="clearfix"></div>
							
							<!-- <label class="remember" for="remember"><input type="checkbox" id="remember" />Remember me</label> --> 

							<div class="button-login">	
								<s:submit class="btn btn-primary" />
							</div>
							<div class="clearfix"></div>
							</fieldset>
					</s:form>
					<hr>
					<h3>Forgot Password?</h3>
					<p>
						No problem, <a href="pass_rec.html">click here</a> to get a new password.
					</p>	
				</div><!--/span-->
			</div><!--/row-->
			

	</div><!--/.fluid-container-->
	
		</div><!--/fluid-row-->
	
	
	<!-- end: JavaScript-->
	
</body>
</html>
