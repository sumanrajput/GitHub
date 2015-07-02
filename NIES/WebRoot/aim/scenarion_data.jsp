<%@ page import="in.igsa.upload.FileUploadVo" %>
   <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

    <head>
    	<s:include value="includes/header.jsp" /> 
    	<s:head/>
    </head>
    <body>
       
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
	            
	            <br/>
	             <br/>
	              <br/>
	               <br/>
	                <br/>
	                 <br/>
	                 
	           <table style="width: 100%;">
	           	<tr >
	           		<th>	Model	</th>
	           		<th>	Scenario	</th>
	           		<th>	Region	</th>
	           		<th>	Variable	</th>
	           		<th>	Unit	</th>	
	           		
	           		<s:iterator status="year" value="year">
	           			<th>	<s:property />	</th>   
	           		</s:iterator>
	           		
	           	</tr>
	            <s:iterator status="stat" value="scenarioReport">
	           		<tr align="left">
	           			<td >	<s:property value="model"/>	</td>
	           			<td>	<s:property value="scenario" />	</td>
	           			<td>	<s:property value="Region"/>	</td>
	           			<td>	<s:property value="variable"/>	</td>
	           			<td>	<s:property value="unit"/>	</td>
	           			<s:property value="yyVal" escape="false"/>
	           			 
	           		</tr>
	            	
	            	
	            </s:iterator>
	            
	            
	           </table> 
	             <br/>
	              <br/>
	               <br/> <br/> <br/> <br/> <br/> <br/> <br/>
	            	
	            </div>
	        </div> 
        </div>

			 
<br/>
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


    </body>

</html>