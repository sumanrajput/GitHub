<%@ taglib prefix="s" uri="/struts-tags" %>
<div id="head-nav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="fa fa-gear"></span>
        </button>
        <a class="navbar-brand" href="#"><span>NIES<!-- <img src="assets/img/logo.png" /> --></span> </a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li><a href="home.html" style="text-align: center;"><i class="fa fa-user"></i><br>About</a></li>
          <li><a href="series.html" style="text-align: center;"><i class="fa fa-camera"></i><br>Series</a></li>
          <li><a href="#" style="text-align: center;"><i class="fa fa-comments"></i><br>Countries</a></li>
		  <li><a href="#services.html" style="text-align: center;"><i class="fa fa-tasks"></i><br>Scatter</a></li>
		  <li><a href="manage.html" style="text-align: center;"><i class="fa fa-wrench"></i><br>Manage</a></li>
		  <li><a href="#contact.html" style="text-align: center;"><i class="fa fa-envelope"></i><br>Download</a></li>
        </ul>
    <ul class="nav navbar-nav navbar-right user-nav">
      <li class="dropdown profile_menu">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="text-align: center;"><b class="caret"></b> <br><span><s:property value="#session.user_name" /></span></a>
        <ul class="dropdown-menu">
          <li><a href="profile.html"><i class="icon-password marr5">&nbsp;</i>My Profile</a></li>
          <li class="divider"></li>
          <li><a href="password.html"><i class="fa fa-lock">&nbsp;</i>Change Password</a></li>
          <!-- <li><a href="#">Messages</a></li> -->
          <li class="divider"></li>
          <li><a href="logout.html"><i class="fa fa-sign-out">&nbsp;</i>Logout</a></li>
        </ul>
      </li>
    </ul>			
      </div><!--/.nav-collapse animate-collapse -->
    </div>
  </div>