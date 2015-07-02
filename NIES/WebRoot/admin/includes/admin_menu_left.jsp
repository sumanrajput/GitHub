<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="cl-sidebar" data-position="right" data-step="1"
	data-intro="<strong>Fixed Sidebar</strong> <br/> It adjust to your needs.">
	<div class="cl-toggle">
		<i class="fa fa-bars"></i>
	</div>
	<div class="cl-navblock">
		<div class="menu-space">
			<div class="content">
				<div class="side-user">
					<div class="info">
						<a href="#"><s:property value="#session.login" /></a> 
						<s:if test="%{#session.user_image != null}">
							<div class="avatar">
								<img width="40" src="<s:property value="#session.user_image"/>" alt="Avatar" />
							</div>
						</s:if><s:else>
							<div class="avatar">
								<img src="admin/images/avatar1_50.gif" alt="Avatar" />
							</div>
						</s:else>
							<img src="admin/images/state_online.png" alt="Status" />
						
						 <span>Online</span>
					</div>
				</div>
				<ul class="cl-vnavigation">
					<li class="active"><a href="admin.html"><i
							class="fa fa-home"></i><span>Dashboard</span></a></li>
					<li><a href="#"><i class="fa fa-smile-o"></i><span>Masters</span></a>
						<ul class="sub-menu">
							<li><a href="user.html">User Master</a></li>
							<li><a href="listArea.html">Area Master</a></li>
							<li><a href="country.html">Country Master</a></li>
							<li><a href="unit.html">Unit Master</a></li>
							<li><a href="role.html">User Role Master</a></li>
							<li><a href="prototype.html">Models</a></li>
							<li><a href="region.html">Regions</a></li>
							<li><a href="institution.html">Institution</a></li>
							<li><a href="standardized.html">Standardize Region</a></li>
							<li><a href="variable.html">Variables</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-list-alt"></i><span>Mapping</span></a>
						<ul class="sub-menu">
							<li><a href="model_region.html">Model, Region code - Mapping</a></li>
							<li><a href="#user_model.html">User Model</a></li>
							<li><a href="native_standerise.html">Model, Native ,Standardized</a></li>
						</ul></li>
				<!-- 	<li><a href="typography.html"><i class="fa fa-text-height"></i><span>Typography</span></a></li>
					<li><a href="charts.html"><i class="fa fa-bar-chart-o"></i><span>Charts</span></a></li> -->
				</ul>
			</div>
		</div>
	</div>
</div>