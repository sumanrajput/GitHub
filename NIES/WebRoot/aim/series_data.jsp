<%@ page import="in.igsa.upload.FileUploadVo" %>
   <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

    <head>
    	<s:head/>
    </head>
    <body>
       
          <!-- Page Title -->
          <!-- Services -->
        <div class="services-container">
	        <div class="container">
	            <div class="row">
	            
	                 
	           <table style="width: 100%;" border="0">
	           	<tr align="left">
	           		<th>	Model	</th>
	           		<th>	Scenario	</th>
	           		<th>	Region	</th>
	           		<th>	Variable	</th>
	           		<th>	Unit	</th>	
	           		
	           		<s:iterator status="year" value="year">
	           			<th>	<s:property/>	</th>		
	           		</s:iterator>
	           	</tr>
	            <s:iterator status="stat" value="seriesDataReport">
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

    </body>

</html>