<%@ taglib prefix="s" uri="/struts-tags" %>
<!-- Top menu -->
<nav class="navbar navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#top-navbar-1">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">National Institute for Environmental Studies</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="top-navbar-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="home.html"><i class="fa fa-user"></i><br>About</a></li>
				<li><a href="series.html"><i class="fa fa-camera"></i><br>Series</a></li>
				<li><a href="#"><i class="fa fa-comments"></i><br>Countries</a></li>
				<li><a href="#services.html"><i class="fa fa-tasks"></i><br>Scatter</a></li>
				  <s:if test="%{#session.ROLE!='R004'}"><li><a href="manage.html"><i class="fa fa-wrench"></i><br>Manage</a></li></s:if>
				 <s:if test="%{#session.ROLE=='R001'}"><li><a href="admin.html"><i class="fa fa-home"></i><br>Dashboard</a></li></s:if>
				<li><a href="#contact.html"><i class="fa fa-envelope"></i><br>Download</a></li>
				<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000">
								<i class="fa fa-user"></i><br>User <span class="caret"></span>
							</a>
							<ul class="dropdown-menu dropdown-menu-left" >
								<li><a href="logout.html">Logout</a></li>
								<li class="active"><a href="#"><s:property value="#session.user_name" /></a></li>
							</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
<!-- End Top menu -->
