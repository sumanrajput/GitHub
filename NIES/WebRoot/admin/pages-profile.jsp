<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="images/favicon.png">

	<title>Clean Zone</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,200,100' rel='stylesheet' type='text/css'>

	<!-- Bootstrap core CSS -->
	<link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="js/jquery.gritter/css/jquery.gritter.css" />

	<link rel="stylesheet" href="fonts/font-awesome-4/css/font-awesome.min.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="../../assets/js/html5shiv.js"></script>
	  <script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css" />
	<link rel="stylesheet" type="text/css" href="js/jquery.easypiechart/jquery.easy-pie-chart.css" />
	<link rel="stylesheet" type="text/css" href="js/bootstrap.switch/bootstrap-switch.css" />
	<link rel="stylesheet" type="text/css" href="js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />
	<link rel="stylesheet" type="text/css" href="js/jquery.select2/select2.css" />
	<link rel="stylesheet" type="text/css" href="js/bootstrap.slider/css/slider.css" />
  <link rel="stylesheet" type="text/css" href="js/jquery.niftymodals/css/component.css" />
  <link rel="stylesheet" href="js/jquery.crop/css/jquery.Jcrop.css" type="text/css" />
	<link href="css/style.css" rel="stylesheet" />	

</head>

<body>

  <!-- Fixed navbar -->
  <div id="head-nav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="fa fa-gear"></span>
        </button>
        <a class="navbar-brand" href="#"><span>Clean Zone</span></a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
      <li class="dropdown-submenu"><a href="#">Sub menu</a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          </ul>
      </li>              
      </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Large menu <b class="caret"></b></a>
      <ul class="dropdown-menu col-menu-2">
        <li class="col-sm-6 no-padding">
          <ul>
          <li class="dropdown-header"><i class="fa fa-group"></i>Users</li>
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="dropdown-header"><i class="fa fa-gear"></i>Config</li>
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li> 
          </ul>
        </li>
        <li  class="col-sm-6 no-padding">
          <ul>
          <li class="dropdown-header"><i class="fa fa-legal"></i>Sales</li>
          <li><a href="#">New sale</a></li>
          <li><a href="#">Register a product</a></li>
          <li><a href="#">Register a client</a></li> 
          <li><a href="#">Month sales</a></li>
          <li><a href="#">Delivered orders</a></li>
          </ul>
        </li>
      </ul>
          </li>
        </ul>
    <ul class="nav navbar-nav navbar-right user-nav">
      <li class="dropdown profile_menu">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img alt="Avatar" src="images/avatar2.jpg" />Jeff Hanneman <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">My Account</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Messages</a></li>
          <li class="divider"></li>
          <li><a href="#">Sign Out</a></li>
        </ul>
      </li>
    </ul>			
    <ul class="nav navbar-nav navbar-right not-nav">
      <li class="button dropdown">
        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class=" fa fa-comments"></i></a>
        <ul class="dropdown-menu messages">
          <li>
            <div class="nano nscroller">
              <div class="content">
                <ul>
                  <li>
                    <a href="#">
                      <img src="images/avatar2.jpg" alt="avatar" /><span class="date pull-right">13 Sept.</span> <span class="name">Daniel</span> I'm following you, and I want your money! 
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="images/avatar_50.jpg" alt="avatar" /><span class="date pull-right">20 Oct.</span><span class="name">Adam</span> is now following you 
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="images/avatar4_50.jpg" alt="avatar" /><span class="date pull-right">2 Nov.</span><span class="name">Michael</span> is now following you 
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="images/avatar3_50.jpg" alt="avatar" /><span class="date pull-right">2 Nov.</span><span class="name">Lucy</span> is now following you 
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <ul class="foot"><li><a href="#">View all messages </a></li></ul>           
          </li>
        </ul>
      </li>
      <li class="button dropdown">
        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-globe"></i><span class="bubble">2</span></a>
        <ul class="dropdown-menu">
          <li>
            <div class="nano nscroller">
              <div class="content">
                <ul>
                  <li><a href="#"><i class="fa fa-cloud-upload info"></i><b>Daniel</b> is now following you <span class="date">2 minutes ago.</span></a></li>
                  <li><a href="#"><i class="fa fa-male success"></i> <b>Michael</b> is now following you <span class="date">15 minutes ago.</span></a></li>
                  <li><a href="#"><i class="fa fa-bug warning"></i> <b>Mia</b> commented on post <span class="date">30 minutes ago.</span></a></li>
                  <li><a href="#"><i class="fa fa-credit-card danger"></i> <b>Andrew</b> killed someone <span class="date">1 hour ago.</span></a></li>
                </ul>
              </div>
            </div>
            <ul class="foot"><li><a href="#">View all activity </a></li></ul>           
          </li>
        </ul>
      </li>
      <li class="button"><a href="javascript:;" class="speech-button"><i class="fa fa-microphone"></i></a></li>				
    </ul>

      </div><!--/.nav-collapse -->
    </div>
  </div>
	
<div id="cl-wrapper">
		<div class="cl-sidebar">
			<div class="cl-toggle"><i class="fa fa-bars"></i></div>
			<div class="cl-navblock">
        <div class="menu-space">
          <div class="content">
            <div class="side-user">
              <div class="avatar"><img src="images/avatar1_50.jpg" alt="Avatar" /></div>
              <div class="info">
                <a href="#">Jeff Hanneman</a>
                <img src="images/state_online.png" alt="Status" /> <span>Online</span>
              </div>
            </div>
            <ul class="cl-vnavigation">
              <li><a href="#"><i class="fa fa-home"></i><span>Dashboard</span></a>
                <ul class="sub-menu">
                  <li><a href="index.html">Version 1</a></li>
                  <li><a href="dashboard2.html"><span class="label label-primary pull-right">New</span> Version 2</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-smile-o"></i><span>UI Elements</span></a>
                <ul class="sub-menu">
                  <li><a href="ui-elements.html">General</a></li>
                  <li><a href="ui-buttons.html">Buttons</a></li>
                  <li><a href="ui-modals.html"><span class="label label-primary pull-right">New</span> Modals</a></li>
                  <li><a href="ui-notifications.html"><span class="label label-primary pull-right">New</span> Notifications</a></li>
                  <li><a href="ui-icons.html">Icons</a></li>
                  <li><a href="ui-grid.html">Grid</a></li>
                  <li><a href="ui-tabs-accordions.html">Tabs & Acordions</a></li>
                  <li><a href="ui-nestable-lists.html">Nestable Lists</a></li>
                  <li><a href="ui-treeview.html">Tree View</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-list-alt"></i><span>Forms</span></a>
                <ul class="sub-menu">
                  <li><a href="form-elements.html">Components</a></li>
                  <li><a href="form-validation.html">Validation</a></li>
                  <li><a href="form-wizard.html">Wizard</a></li>
                  <li><a href="form-masks.html">Input Masks</a></li>
                  <li><a href="form-wysiwyg.html"><span class="label label-primary pull-right">New</span>WYSIWYG Editor</a></li>
                  <li><a href="form-upload.html"><span class="label label-primary pull-right">New</span>Multi Upload</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-table"></i><span>Tables</span></a>
                <ul class="sub-menu">
                  <li><a href="tables-general.html">General</a></li>
                  <li><a href="tables-datatables.html"><span class="label label-primary pull-right">New</span>Data Tables</a></li>
                </ul>
              </li>              
              <li><a href="#"><i class="fa fa-map-marker nav-icon"></i><span>Maps</span></a>
                <ul class="sub-menu">
                  <li><a href="maps.html">Google Maps</a></li>
                  <li><a href="vector-maps.html"><span class="label label-primary pull-right">New</span>Vector Maps</a></li>
                </ul>
              </li>             
              <li><a href="#"><i class="fa fa-envelope nav-icon"></i><span>Email</span></a>
                <ul class="sub-menu">
                  <li><a href="email-inbox.html"><span class="label label-primary pull-right">New</span>Inbox</a></li>
                  <li><a href="email-read.html"><span class="label label-primary pull-right">New</span>Email Detail</a></li>
                </ul>
              </li>
              <li><a href="typography.html"><i class="fa fa-text-height"></i><span>Typography</span></a></li>
              <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i><span>Charts</span></a></li>
              <li><a href="#"><i class="fa fa-file"></i><span>Pages</span></a>
                <ul class="sub-menu">
                  <li><a href="pages-blank.html">Blank Page</a></li>
                  <li><a href="pages-blank-header.html">Blank Page Header</a></li>
                  <li><a href="pages-blank-aside.html">Blank Page Aside</a></li>
                  <li><a href="pages-login.html">Login</a></li>
                  <li><a href="pages-404.html">404 Page</a></li>
                  <li><a href="pages-500.html">500 Page</a></li>
                  <li><a href="pages-sign-up.html"><span class="label label-primary pull-right">New</span>Sign Up</a></li>
                  <li><a href="pages-forgot-password.html"><span class="label label-primary pull-right">New</span>Forgot Password</a></li>
                  <li class="active"><a href="pages-profile.html"><span class="label label-primary pull-right">New</span>Profile</a></li>
                  <li><a href="pages-search.html"><span class="label label-primary pull-right">New</span>Search</a></li>
                  <li><a href="pages-calendar.html"><span class="label label-primary pull-right">New</span>Calendar</a></li>
                  <li><a href="pages-code-editor.html"><span class="label label-primary pull-right">New</span>Code Editor</a></li>
                  <li><a href="pages-gallery.html">Gallery</a></li>
                  <li><a href="pages-timeline.html">Timeline</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class="text-right collapse-button" style="padding:7px 9px;">
          <input type="text" class="form-control search" placeholder="Search..." />
          <button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;" class="fa fa-angle-left"></i></button>
        </div>
			</div>
		</div>
	
	<div class="container-fluid" id="pcont">

	<div class="cl-mcont">
    <div class="row">
      <div class="col-sm-12">
        <div class="block-flat profile-info">
          <div class="row">
            <div class="col-sm-2">
              <div class="avatar">
                <img src="images/av.jpg" class="profile-avatar" />
              </div>
            </div>
            <div class="col-sm-7">
              <div class="personal">
                <h1 class="name">Johnny Depp</h1>
                <p class="description">I am a web developer and desginer based in Medellín - Colombia, I like read books, good music and nature.<p>
                <button class="btn btn-primary btn-flat btn-rad" data-modal="reply-ticket"><i class="fa fa-check"></i> Following</button>
              </div>
            </div>
            <div class="col-sm-3">
              <table class="no-border no-strip skills">
                <tbody class="no-border-x no-border-y">
                  <tr>
                    <td style="width:45%;">Photoshop</td>
                    <td><div class="progress"><div style="width: 80%" class="progress-bar progress-bar-info"></div></div></td>
                  </tr>
                  <tr>
                    <td>JavaScript</td>
                    <td><div class="progress"><div style="width: 70%" class="progress-bar progress-bar-info"></div></div></td>
                  </tr>
                  <tr>
                    <td>HTML</td>
                    <td><div class="progress"><div style="width: 50%" class="progress-bar progress-bar-info"></div></div></td>
                  </tr>
                  <tr>
                    <td>CSS</td>
                    <td><div class="progress"><div style="width: 40%" class="progress-bar progress-bar-info"></div></div></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="row">
      <div class="col-sm-8">
        <div class="tab-container">
          <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Information</a></li>
            <li><a data-toggle="tab" href="#friends">Friends</a></li>
            <li><a data-toggle="tab" href="#settings">Settings</a></li>
          </ul>
          <div class="tab-content">
            <div id="home" class="tab-pane active cont">
              <table class="no-border no-strip information">
                <tbody class="no-border-x no-border-y">
                  <tr>
                    <td style="width:20%;" class="category"><strong>CONTACT</strong></td>
                    <td>
                      <table class="no-border no-strip skills">
                        <tbody class="no-border-x no-border-y">
                          <tr><td style="width:20%;"><b>Website</b></td><td>www.website.com</td></tr>
                          <tr><td style="width:20%;"><b>E-mail</b></td><td>johnny@example.com</td></tr>
                          <tr><td style="width:20%;"><b>Mobile</b></td><td>(999) 999-9999</td></tr>
                          <tr><td style="width:20%;"><b>Location</b></td><td>Montreal, Canada</td></tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                  <tr>
                    <td class="category"><strong>ABOUT ME</strong></td>
                    <td><p>I am a web developer and desginer based in Medellín - Colombia, I like read books, good music and nature.</p></td>
                  </tr>
                  <tr>
                    <td class="category"><strong>SOCIAL</strong></td>
                    <td> 
                      <button class="btn btn-default btn-flat btn-facebook bg" type="button"><i class="fa fa-facebook"></i> <span>Facebook</span></button>
                      <button class="btn btn-default btn-flat btn-twitter bg" type="button"><i class="fa fa-twitter"></i> <span>Twitter</span></button>
                      <button class="btn btn-default btn-flat btn-google-plus bg" type="button"><i class="fa fa-google-plus"></i> <span>Google+</span></button>
                    </td>
                  </tr>


                </tbody>
              </table>
            </div>
            <div id="friends" class="tab-pane cont">
            <div class="btn-group pull-right">
              <button type="button" class="btn btn-sm btn-flat btn-default"><i class="fa fa-angle-left"></i></button> 
              <button type="button" class="btn btn-sm btn-flat btn-default"><i class="fa fa-angle-right"></i></button> 
            </div>
            <div class="btn-group pull-right">
              <button type="button" class="btn btn-sm btn-flat btn-default dropdown-toggle" data-toggle="dropdown">
              Order by <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Asc</a></li>
                <li><a href="#">Desc</a></li>
                <li><a href="#">Email</a></li>
                <li class="divider"></li>
                <li><a href="#">Birthday</a></li>
              </ul>
            </div>
              <h3 class="widget-title">My Friends</h3>
              <div class="row friends-list">
                <div class="col-sm-6 col-md-4">
                  <div class="friend-widget">
                    <img src="images/avatars/avatar1.jpg" />
                    <h4>Andrea Smith</h4>
                    <p>Work</p>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4">
                  <div class="friend-widget">
                    <img src="images/avatars/avatar2.jpg" />
                    <h4>Jeff Hanneman</h4>
                    <p>Family</p>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4">
                  <div class="friend-widget">
                    <img src="images/avatar1_50.jpg" />
                    <h4>Jeff Hanneman</h4>
                    <p>Friends</p>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4">
                  <div class="friend-widget">
                    <img src="images/avatar3_50.jpg" />
                    <h4>Andrea Smith</h4>
                    <p>Work</p>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4">
                  <div class="friend-widget">
                    <img src="images/avatar4_50.jpg" />
                    <h4>Jeff Hanneman</h4>
                    <p>Work</p>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4">
                  <div class="friend-widget">
                    <img src="images/avatars/avatar2.jpg" />
                    <h4>Jeff Hanneman</h4>
                    <p>Work</p>
                  </div>
                </div>
              </div>
            </p></div>
            <div id="settings" class="tab-pane">
              <form role="form" class="form-horizontal">
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="nick">Avatar</label>
                    <div class="col-sm-9"> 
                      <div class="avatar-upload">
                        <img src="images/av.jpg" class="profile-avatar img-thumbnail" />
                        <input id="fileupload" type="file" name="files[]">
                        <div id="progress" class="overlay"></div>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="nick">Nick</label>
                    <div class="col-sm-9">
                      <input type="email" placeholder="Your Nickname" id="nick" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="name">Name</label>
                    <div class="col-sm-9">
                      <input type="email" placeholder="Your Name" id="name" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="inputEmail3">Email</label>
                    <div class="col-sm-9">
                      <input type="email" placeholder="Email" id="inputEmail3" class="form-control">
                    </div>
                  </div>
                  <div class="form-group spacer2">
                    <div class="col-sm-3"></div>
                    <label class="col-sm-9" for="inputPassword3">Change Password</label>

                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="inputPassword3">Password</label>
                    <div class="col-sm-9">
                      <input type="password" placeholder="Password" id="inputPassword3" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label" for="inputPassword4">Repeat Password</label>
                    <div class="col-sm-9">
                      <input type="password" placeholder="Password" id="inputPassword4" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                      <button class="btn btn-primary" type="submit">Update</button>
                      <button class="btn btn-default">Reset</button>
                    </div>
                  </div>
              </form>
              <div id="crop-image" class="md-modal colored-header md-effect-1">
                <div class="md-content">
                  <div class="modal-header">
                    <h3>Crop Image</h3>
                    <button aria-hidden="true" data-dismiss="modal" class="close md-close" type="button">×</button>
                  </div>
                  <div class="modal-body">
                    <div class="text-center crop-image">
                    </div>
                    <form action="crop.php" method="post" onsubmit="return checkCoords();">
                      <input type="hidden" id="x" name="x" />
                      <input type="hidden" id="y" name="y" />
                      <input type="hidden" id="w" name="w" />
                      <input type="hidden" id="h" name="h" />
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default btn-flat md-close" type="button">Cancel</button>
                    <button id="save-image" class="btn btn-primary btn-flat" type="button">Save Image</button>
                  </div>
                </div>
              </div>
              <div class="md-overlay"></div>
            </div>
          </div>
        </div>    
        
        <div class="block-transparent">
          <div class="header">
            <h4>Timeline</h4>
          </div>
          <ul class="timeline">
            <li>
              <i class="fa fa-comment"></i>
              <span class="date">5 Jan</span>
              <div class="content">
                <p><strong>John</strong> has called Shenlong with <strong>You</strong>.</p>
                <small>A minute ago</small>
              </div>
            </li>
            <li>
              <i class="fa fa-envelope green"></i>
              <span class="date">5 Jan</span>
              <div class="content">
                <i class="fa fa-paperclip pull-right"></i>
                <p><strong>Bob</strong><br/>This is a message for you in your birthday.</p>
                <a class="image-zoom" href="images/gallery/img4.jpg"><img src="images/gallery/img4.jpg" class="img-thumbnail" style="height:64px;" /></a>
                <a class="image-zoom" href="images/gallery/img6.jpg"><img src="images/gallery/img6.jpg" class="img-thumbnail" style="height:64px;" /></a>
              </div>
            </li>
            <li>
              <i class="fa fa-file red"></i>
              <span class="date">5 Jan</span>
              <div class="content">
                <p><strong>Michael</strong> has wrote on your wall:</p>
                <blockquote>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                  <small>Some historic guy</small>
                </blockquote>
              </div>
            </li>
            <li><i class="fa fa-globe purple"></i><span class="date">5 Jan</span><div class="content"><p><strong>María</strong> This is a message for you in your birthday.</p></div></li>
          </ul>
        </div>
      </div>
      
      <div class="col-sm-4 side-right">
        <div class="block-flat bars-widget">
          <div class="spk4 pull-right spk-widget"></div>
          <h4>Total Sales</h4>
          <p>Monthly summary</p>
          <h3>545</h3>
        </div>
        
        <div class="block-flat bars-widget">
          <div class="spk5 pull-right spk-widget"></div>
          <h4>New Visitors</h4>
          <p>Stat Description</p>
          <h3>146</h3>
        </div>
        
        <div class="block-transparent">
          <div class="header">
            <h4>Events</h4>
          </div>
          <div class="list-group todo list-widget">
            <li href="#" class="list-group-item"><span class="date"><i class="fa fa-clock-o"></i> 20 Dec</span> Dinner with my family</li>
            <li href="#" class="list-group-item"><span class="date"><i class="fa fa-clock-o"></i> 13 Jan</span> Meeting with our partners</li>
            <li href="#" class="list-group-item"><span class="date"><i class="fa fa-clock-o"></i> 18 Feb</span> Work in new project</li>
            <li href="#" class="list-group-item"><span class="date"><i class="fa fa-clock-o"></i> 21 Feb</span> Go to the doctor</li>
          </div>
        </div>
        
        <div class="block widget-notes">
          <div class="header dark"><h4>Notes</h4></div>
          <div class="content">
            <div contenteditable="true" class="paper">
            Send e-mails.<br>
            <s>meeting at 4 pm.</s><br>
            <s>Buy some coffee.</s><br>
            Feed my dog.
            </div>
          </div>
        </div>
        
      </div>
    </div>

	</div>
	
	</div> 
	
</div>

	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
	<script type="text/javascript" src="js/jquery.sparkline/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="js/jquery.easypiechart/jquery.easy-pie-chart.js"></script>
  <script src="js/jquery.ui/jquery-ui.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.nestable/jquery.nestable.js"></script>
	<script type="text/javascript" src="js/bootstrap.switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script src="js/jquery.select2/select2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="js/jquery.niftymodals/js/jquery.modalEffects.js"></script>   
  <script type="text/javascript" src="js/masonry.js"></script>
  <script type="text/javascript" src="js/jquery.crop/js/jquery.Jcrop.js"></script>

  <!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
  <script src="js/jquery.upload/js/jquery.iframe-transport.js"></script>
  <!-- The basic File Upload plugin -->
  <script src="js/jquery.upload/js/jquery.fileupload.js"></script>
	<script type="text/javascript" src="js/behaviour/general.js"></script>

    <script type="text/javascript">
      $(document).ready(function(){
        //initialize the javascript
        App.init();
        
        $(".spk4").sparkline([2,4,3,6,7,5,8,9,4,2,10,], { type: 'bar', width: '200px', barWidth: 6, height: '50px',barColor: '#19B698'});
        $(".spk5").sparkline([5,3,5,6,5,7,4,8,6,9,8,], { type: 'bar', width: '80px', barWidth: 6, height: '50px',barColor: '#E85647'});
        
        //Profile Image Upload
          'use strict';
        // Change this to the location of your server-side upload handler:
        var url =  'js/jquery.upload/server/php/';
        var jcrop;
        var timg;
        
        $('#fileupload').fileupload({
            url: url,
            dataType: 'json',
            done: function (e, data) {
                $.each(data.result.files, function (index, file) {
                    timg = file.name;
                    $(".crop-image").html('<img src="js/jquery.upload/server/php/files/' + file.name + '" />');
                    $('#progress').fadeOut();
                    
                    //Crop Image
                    $(".crop-image img").Jcrop({
                      aspectRatio: 1
                    },function(){
                      jcrop = this;
                    });
                });
                
                $("#crop-image").niftyModal();
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress').fadeIn();
                $('#progress').css(
                    'width',
                    progress + '%'
                );
            }
        }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');
        
        $("#save-image").click(function(){
          var c = jcrop.tellSelect();
          //console.log(jcrop.tellSelect());
          if( c.w != 0 ){
            $(".profile-avatar").attr("src",'js/jquery.upload/server/php/files/crop.php?src=' + timg + '&x=' + c.x + '&y=' + c.y + '&w=' + c.w + '&h=' + c.h );
            $("#crop-image").niftyModal('hide');
          }else{
            alert("Please select a crop region then press save.");
          }
        });

      });
    </script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
  <script src="js/behaviour/voice-commands.js"></script>
  <script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
