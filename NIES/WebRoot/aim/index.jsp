<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

    <head>
    	<s:include value="includes/header.jsp" /> 
    	<s:head/>
    </head>
    <body>
        <s:include value="includes/menu.jsp" />
          <!-- Page Title -->
        <div class="page-title-container">
            <div class="container main-top-margin">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn">
                        <i class="fa fa-user"></i>
                        <h1>SSP Database (version 0.93) /</h1>
                        <p>Note that the community review of the SSP data has been completed in October 2012. The SSP data on this website has been updated since then and reflects changes from March 2013 in response to the reviewer comments. Please send any comments or questions to <a href='mailto:ssp-comments@iiasa.ac.at <ssp-comments@iiasa.ac.at>'>ssp-comments@iiasa.ac.at</a>.</p>
                    </div>
                </div>
            </div>
        </div>

         <!-- About Us Text -->
        <div class="about-us-container">
        	<div class="container">
	            <div class="row">
	                <div class="col-sm-12 about-us-text wow fadeInLeft">
	                    <h3>Introduction</h3>
	                    <p>
	                    	The SSP database aims at the documentation of quantitative projections of the so-called Shared Socioeconomic Pathways (SSPs) and related Integrated Assessment 
scenarios. The SSPs are part of a new framework that the climate change research community has adopted to facilitate the integrated analysis of future climate 
impacts, vulnerabilities, adaptation, and mitigation. Information about the scenario process and the SSP framework can be found in 
<a href = 'http://www.nature.com/nature/journal/v463/n7282/full/nature08823.html'>Moss et al. (2010)</a>, 
<a href = 'https://www.isp.ucar.edu/sites/default/files/Scenario_FrameworkPaper_15aug11_0.pdf'>Arnell et al. (2011)</a>, 
<a href = 'http://www.sciencedirect.com/science/article/pii/S0959378011001191'>van Vuuren et al. (2012)</a> and
<a href = 'http://www.centre-cired.fr/IMG/pdf/CIREDWP-201023.pdf'>Kriegler et al. (2012)</a>. 
The framework is built around a matrix that combines climate forcing on one axis (as represented by the Representative Forcing Pathways) and socio-economic 
conditions on the other. Together, these two axes describe situations in which mitigation, adaptation and residual climate damage can be evaluated.
	                    </p>
	                    
	                    <p>
The SSP quantifications build upon the collaborative effort between the IAV and IAM community, which has met in a series of meetings and identified a limited set 
of five SSP storylines/narratives
 (<a href = 'https://www2.cgd.ucar.edu/sites/default/files/iconics/Boulder-Workshop-Report.pdf'>O&lsquo;Neill et al, 2012</a>).
 The narratives describe the main characteristics of the SSP future development pathways. They served as the starting point for the identification of internally 
consistent assumptions for the quantification of SSP elements.  Different modeling tools can be used to develop quantifications of these storylines, including 
factors like population, economic development, land use and energy use. 
</p>
<p>
Currently (May 2012), the database includes projections for population and economic development, which are the elements that are most used as basis of both 
integrated assessment and IAV studies. Specifically, for the following elements quantifications are available:
</p>
<ol>
	<li>population by age, sex, and education;</li>
	<li>urbanization; and</li>
	<li>economic development (GDP)</li>
</ol>

<p style="text-align: justify;">	For each SSP a single population and urbanization scenario, developed by the International Institute for Applied Systems Analysis (IIASA) and the National Center 
for Atmospheric Research (NCAR), is provided. For GDP, three alternative interpretations of the SSPs by the teams from the 
Organisation for Economic Co-operation and Development(OECD), the International Institute for Applied Systems Analysis (IIASA) and the Potsdam Institute 
for Climate Impact Research (PIK) have been developed. 
The GDP projections are based on harmonized assumptions for the interpretation of the SSP storylines in terms of the main 
drivers of economic growth. They differ however with respect to the employed methodology and outcomes.
It is recommended to use the GDP projections by all teams to test the sensitivity of the results due to different GDP assumptions. 
In case users can only use one interpretation of the SSPs, for each SSP a single &lsquo;illustrative&rsquo; case has been selected. 
The &lsquo;illustrative&rsquo; SSP should not be interpreted as the central or representative case. In the selection of the &lsquo;illustrative&rsquo; cases, 
we have currently selected all SSPs from one team (OECD). For selecting the illustrative cases a choice had to be made between increasing 
the representativeness of the set as a whole and ensuring the comparability of the SSPs over time and at finer spatial resolution for single 
countries and/or regions. For the time being, these consideration have led to the selection of all illustrative cases from a single team. 
For the final release, illustrative cases from more than one team might be selected also based on the external review comments.
</p>   

<p>
Please note that the projections for the different SSPs are constructed such that they provide a consistent and plausible range for the combined set of variables. 
While we have aimed to represent a wide range of possible futures, this might not hold for every possible factor (e.g. income convergence). 
In a more extensive note availabe <a href = 'static/download/ssp_suplementary text.pdf'>here</a> we document some important factors of the SSPs, in particular 
<ol>
	<li>brief summaries of the SSP narratives, and</li>
	<li>methods and assumptions that were used for the development of the SSP population, urbanization, and GDP projections.</li>
</ol>

The database will be extended in due course also with SSP-based IAM scenarios. The SSP database has been established by the Working Group on 
&ldquo;Quantitative SSP Data and IAM Scenarios&rdquo; of the joint IAV-IAM Committee to coordinate the development of new socio-economic scenarios
 <a href='https://www.isp.ucar.edu/joint-iav-iam-committee'>more info</a>.  
All SSP information that is provided on this website is preliminary and work in progress. The data has undergone extensive internal and external review.
First preliminary SSPs were  made 
publicly available in May 2012, and were subsequently updated in March 2013 in response to a community review. 
</p>
<p>
Members of the Task Group on Quantitative SSP Data and IAM Scenarios:<br>
Keywan Riahi (co-chair), Detlef van Vuuren (co-chair), Nico Bauer, Jean Chateau, Jesus Crespo Cuaresma, Rob Dellink, Jae Edmonds, Leiwen Jiang, Eom Jiyong, Samir KC, 
Volker Krey, Tom Kram, Elmar Kriegler, Marian Leimbach, Hermann Lotze-Campen, Wolfgang Lutz, Mikiko Kainuma, Toshihiko Masui, Richard Moss, Brian O&lsquo;Neill.<br>
For questions on the SSP data please contact:
<ol>
	<li>Population: Wolfgang Lutz and Samir KC (IIASA)</li>
	<li>Urbanization: Leiwen Jiang and Brian O&lsquo;Neill (NCAR)</li>
	<li>GDP: Rob Dellink and Jean Chateau (OECD), Jesus Crespo Cuaresma (IIASA), Elmar Kriegler and Marian Leimbach (PIK)</li>
<!--	<li>IAM Scenarios:
	<ol> 
		<li>AIM: Toshihiko Masui, Mikiko Kainuma, Shinichiro Fujimori (NIES)</li>
		<li>GCAM: Jae Edmonds, Eom Jiyong et al (PNNL)</li>
		<li>IMAGE: Detlef van Vuuren, Tom Kram et al (PBL)</li>
		<li>MESSAGE: Volker Krey, Keywan Riahi, et al (IIASA)</li>
		<li>ReMind: Elmar Kriegler, Nico Bauer, Hermann Lotze-Campen, et al. (PIK)</li>
	</ol></li> -->
</ol>

</p>

                 
	                    
	                    
	                    
	                    
	                    <h3>Disclaimer</h3>
	                   <p>
Note that all SSP information reflects the assessment by the involved experts, and does not reflect the official view of the organizations they work for or the governments they represent.
</p>

<h3>Database Tutorial</h3>
<p>
A short tutorial on the use of the web database can be found below. If you experience technical problems with this database, please contact the
 <a href='mailto:SSP database admin <webapps.ene.admin@iiasa.ac.at>'>SSP Database Administrator</a>.
</p>

<h4>The Navigation tabs</h4>
At the upper end of the browser window five navigation tabs can be found that provide different functionality of the web database. These five tabs are described in more detail in the following section.

<h4>About tab</h4>
<p>
The <b>About</b> tab provides information about the database and gives instructions on how to use the database.
 With exception of the <b>About</b> tab which can be viewed without special permissions, all other tabs require a valid user account (login and password) 
 for the database.
After entering the credentials the four additional tabs to navigate the database can be accessed. The first three tabs, 
i.e. <b>Series</b>, <b>Countries</b> and <b>Scatter</b>, all allow to view the scenarios in the database. 
Which scenarios can be viewed depends on the individual user permissions (see <a href='#account'>User account</a>). 
The difference between these three tabs for viewing is the way how scenario data can be combined for viewing. 
</p>
<!--
<h4>Regions tab</h4>
<p>
The <b>Regions</b> tab allows selecting a single variable from a single scenario (e.g. total GDP in Market Exchange Rate for a baseline scenario from a specific model) in order to compare this selection across different regions. For variables that can be added in a meaningful way (e.g. GDP, total primary energy consumption) the graph that appears on the right hand side will be a stacked are graph while for variables that are not additive (e.g. price information) a line graph will be displayed.
</p>

<h4>Sectors tab</h4>
<p>
The <b>Sectors</b> tab allows selecting multiple variables from a single scenario and region. This view is most useful for displaying a set of variables from one sector, for example, all fuel types of industrial final energy consumption. Again, if the variables can be added in a meaningful way (e.g. different fuel types of one sector) a stacked area graph is shown; if this is not possible (e.g. for different fuel prices) a line graph is displayed. In case variables with different units are selected a warning is issued on the y-axis label of the graph in red. Please note that it is necessary to mark a variable name (highlighted in blue) in addition to selecting variables for the graph on the right hand side to be updated (see also under (3.) Variables below).
</p>
-->
<h4>Series tab</h4>
<p>
The <b>Series</b> tab allows selecting a single variable from multiple scenarios and regions. The preview graph on the right is always a line graph and is most useful to compare trends across different scenarios (and models) in one or multiple regions.
</p>

<h4>Countries tab</h4>
<p>
The <b>Countries</b> tab allows selecting a single variable from multiple scenarios and countries. The preview graph on the right is always a line graph and is most useful to compare trends across different scenarios (and models) in one or multiple countries.
</p>

<h4>Scatter tab</h4>
<p>
The <b>Scatter</b> tab allows to look at the relationship between two quantities. The <b>Variables</b> navigation tree has been split into two, one for x-axis data and one for y-axis data, both of which also allow looking at specific quantities and growth rates.
</p>

<h4>Common Features of the Sectors, Countries and Scatter tabs</h4>
In all three view tabs the following selections can be made in the navigation bars on the upper left-hand side of the browser window:
<p>
<b>(1.) Regions:</b> In the upper left area of the screen is a field named <i>Regions</i>. Depending on the tab (see above) you may select one or multiple regions for which the data is shown on the screen. Generally the regions are organized in the two folders <i>Compare</i> and <i>Model Name</i>. While in the <i>Compare</i> folder you can find regions that are (approximately) defined across many models (World, five macro regions and seven countries commonly compared in modeling comparison exercises, see <a href='#regiondefs'>Region definitions</a>), the <i>Model name</i> folder contains the native regions that you report to the database.
</p>
<p>
<b>(2.) Scenarios: </b> This field includes the list of scenarios from which one or more scenarios can be selected. In addition to scenarios, for a number of variables historical and base year data can be shown to compare with scenario results. Note that historical data is only available for the regions in the <i>Compare</i> folder (see also previous paragraph) and that currently only some emission and energy variables are covered. Further, displaying historical data is at the moment restricted to the Sectors tab.
</p>
<p>
<b>(3.) Variables:</b> In this field the variables can be selected for which the data is shown on the screen. Note that in the Sectors tab it is necessary to not only required to tick one or multiple variables for selection, but also to mark a variable name (highlighted in blue) for the graph on the right hand side to be updated. It is not important which variable or variable category is marked to initiate the graph update. In addition to looking at raw time series data, there is also the possibility to look at specific quantities (e.g., per GDP or per capita) and growth rates. In the header of the <b>Variables</b> navigation tree (#3) you will find two new drop down menus that allow to select these features. The left one allows to switch between raw data and growth rates and the right on between raw data, per GDP (MER or PPP) and per capita. They can be applied together, e.g. for looking at growth of GDP per capita.
</p>

<p>
The Chart Preview on the upper right-hand side of the browser window shows the graph of the selected data (variable + scenarios + regions). In addition, the horizontally oriented <i>Query Results</i> area in the middle of the screen shows the data in tabular format.
</p>
<p>
It is possible to export the data either into Excel or two different graphical formats (PNG = portable network graphics, SVG = scalable vector graphics). In order to do so, select one of the options in the <i>Output Options</i> window at the bottom of the browser window. The field titled <i>Notes</i> shows additional information or explanatory text for the selected variables. The availability of notes is still under development and ultimate the contents will depend on input from modeling teams. 
</p>


<a id='regiondefs' name='regiondefs'></a>
<h2>Region definitions</h2>
<p>
The consolitated results in the database are shown at regional aggregations of the World, five and 32 macro regions. 
Country information is grouped for eleven macro regions (from the MESSAGE model). <!--and 32 individual countries and regions-->
These regions are defined as follows:
</p>

<h3>Aggregation on the five region level</h3>
<p>
R5<b>OECD</b> = Includes the OECD 90  and EU member states and candidates.<br> 
Albania, Australia, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Canada, Croatia, Cyprus, Czech Republic, 
Denmark, Estonia, Finland, France, Germany, Greece, Guam, Hungary, Iceland, Ireland, Italy, Japan, Latvia, Lithuania, 
Luxembourg, Malta, Montenegro, Netherlands, New Zealand, Norway, Poland, Portugal, Puerto Rico, Romania, Serbia, 
Slovakia, Slovenia, Spain, Sweden, Switzerland, The former Yugoslav Republic of Macedonia, Turkey, 
United Kingdom, United States of America 
</p>
<p>
R5<b>REF</b> = Countries from the Reforming Ecomonies of Eastern Europe and the Former Soviet Union.<br>
Armenia, Azerbaijan, Belarus, Georgia, Kazakhstan, Kyrgyzstan, Republic of Moldova, Russian Federation, 
Tajikistan, Turkmenistan, Ukraine, Uzbekistan
</p>
<p>
R5<b>ASIA</b> = The region includes most Asian countries with the exception of the Middle East, Japan and Former Soviet Union states.<br>

Afghanistan, Bangladesh, Bhutan, Brunei Darussalam, Cambodia, China, China, Hong Kong SAR, China, Macao SAR, 
Democratic People's Republic of Korea, Fiji, French Polynesia, India, Indonesia, Lao People's Democratic Republic, 
Malaysia, Maldives, Micronesia (Fed. States of), Mongolia, Myanmar, Nepal, New Caledonia, Pakistan, Papua New Guinea, 
Philippines, Republic of Korea, Samoa, Singapore, Solomon Islands, Sri Lanka, Taiwan, Thailand, Timor-Leste, Vanuatu, Viet Nam

</p>
<p>
R5<b>MAF</b> = This region includes the countries of the Middle East and Africa.<br>

Algeria, Angola, Bahrain, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Cape Verde, Central African Republic, Chad, Comoros, 
Congo, C&ocirc;te d`Ivoire, Democratic Republic of the Congo, Djibouti, Egypt, Equatorial Guinea, Eritrea, Ethiopia, Gabon, Gambia, Ghana,
 Guinea, Guinea-Bissau, Iran (Islamic Republic of), Iraq, Israel, Jordan, Kenya, Kuwait, Lebanon, Lesotho, Liberia, Libyan Arab Jamahiriya,
 Madagascar, Malawi, Mali, Mauritania, Mauritius, Mayotte, Morocco, Mozambique, Namibia, Niger, Nigeria, Occupied Palestinian Territory, 
 Oman, Qatar, Rwanda, R&eacute;union, Saudi Arabia, Senegal, Sierra Leone, Somalia, South Africa, South Sudan, Sudan, Swaziland, Syrian Arab Republic, 
 Togo, Tunisia, Uganda, United Arab Emirates, United Republic of Tanzania, Western Sahara, Yemen, Zambia, Zimbabwe
</p>
<p>
R5<b>LAM</b> = This region includes the countries of Latin America and the Caribbean.<br>

Argentina, Aruba, Bahamas, Barbados, Belize, Bolivia (Plurinational State of), Brazil, Chile, Colombia, Costa Rica, Cuba, 
Dominican Republic, Ecuador, El Salvador, French Guiana, Grenada, Guadeloupe, Guatemala, Guyana, Haiti, Honduras, Jamaica, 
Martinique, Mexico, Nicaragua, Panama, Paraguay, Peru, Suriname, Trinidad and Tobago, United States Virgin Islands, Uruguay, 
Venezuela (Bolivarian Republic of)
 
</p>

<!--
<h3>Seven individual countries/regions commonly used in scenario analysis</h3>

<h3>Seven individual countries/regions commonly used in scenario analysis</h3>
<p>
<b>Brazil</b> = Federative Republic of Brazil<br>
<b>China</b> = People's Repulic of China<br>
<b>India</b> = Republic of India<br>
<b>EU</b> = European Union (27 member countries)<br>
<b>Japan</b> = State of Japan<br>
<b>Russia</b> = Russian Federation<br>
<b>USA</b> = United States of America<br>
</p>
-->

<h3>Aggregation on the 32 region level</h3>
<p>
R32<b>ANUZ</b> = This region includes Australia and New Zealand.<br>
</p>

<p>R32<b>BRA</b> = Brazil. </p>
<p>R32<b>CAN</b> = Canada.</p>
<p>R32<b>CAS</b> = This region includes the countries of Central Asia.<br/>
 Armenia, Azerbaijan, Georgia, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan </p>
<p>R32<b>CHN</b> = China (Mainland, Hongkong, Macao; excl. Taiwan).<br/> China, China, Hong Kong SAR, China, Macao SAR </p>
<p>R32<b>EEU</b> = Eastern Europe (excl. former Soviet Union and EU member states).<br/> Albania, Bosnia and Herzegovina, Croatia, Montenegro, Serbia, The former Yugoslav Republic of Macedonia </p>
<p>R32<b>EEU-FSU</b> = Eastern Europe, former Soviet Union (excl. Russia and EU members).<br/> Belarus, Republic of Moldova, Ukraine </p>
<p>R32<b>EFTA</b> = This region includes Iceland, Norway, Switzerland </p>
<p>R32<b>EU12-H</b> = New EU member states that joined as of 2004 - high income.<br/> Cyprus, Czech Republic, Estonia, Hungary, Malta, Poland, Slovakia, Slovenia </p>
<p>R32<b>EU12-M</b> = New EU member states that joined as of 2004 - medium income.<br/> Bulgaria, Latvia, Lithuania, Romania </p>
<p>R32<b>EU15</b> = This region includes European Union member states that joined prior to 2004.<br/> Austria, Belgium, Denmark, Finland, France, Germany, Greece, Ireland, Italy, Luxembourg, Netherlands, Portugal, Spain, Sweden, United Kingdom </p>
<p>R32<b>IDN</b> = Indonesia. </p>
<p>R32<b>IND</b> = India. </p>
<p>R32<b>JPN</b> = Japan. </p>
<p>R32<b>KOR</b> = <!--South Korea.<br/>--> Republic of Korea. </p>
<p>R32<b>LAM-L</b> = This region includes the countries of Latin America (excl. Brazil, Mexico) - low income.<br/> Belize, Guatemala, Haiti, Honduras, Nicaragua </p>
<p>R32<b>LAM-M</b> = This region includes the countries of Latin America (excl. Brazil, Mexico) - medium and high income.<br/> Antigua and Barbuda, Argentina, Bahamas, Barbados, Bermuda, Bolivia (Plurinational State of), Chile, Colombia, Costa Rica, Cuba, Dominica, Dominican Republic, Ecuador, El Salvador, French Guiana, Grenada, Guadeloupe, Guyana, Jamaica, Martinique, Netherlands Antilles, Panama, Paraguay, Peru, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Suriname, Trinidad and Tobago, Uruguay, Venezuela (Bolivarian Republic of) </p>
<p>R32<b>MEA-H</b> = This region includes the countries of Middle East Asia - high income.<br/> Bahrain, Israel, Kuwait, Oman, Qatar, Saudi Arabia, United Arab Emirates </p>
<p>R32<b>MEA-M</b> = This region includes the countries of Middle East Asia - low and medium income.<br/> Iran (Islamic Republic of), Iraq, Jordan, Lebanon, Occupied Palestinian Territory, Syrian Arab Republic, Yemen </p>
<p>R32<b>MEX</b> = Mexico </p>
<p>R32<b>NAF</b> = This region includes the countries of North Africa.<br/> Algeria, Egypt, Libyan Arab Jamahiriya, Morocco, Tunisia, Western Sahara </p>
<p>R32<b>OAS-CPA</b> = This region includes the countries of Other Asia - former Centrally Planned Asia.<br/> Cambodia, Lao People's Democratic Republic, Mongolia, Viet Nam </p>
<p>R32<b>OAS-L</b> = This region includes the countries of Other Asia - low income.<br/> Bangladesh, Democratic People's Republic of Korea, Fiji, Micronesia (Fed. States of), Myanmar, Nepal, Papua New Guinea, Philippines, Samoa, Solomon Islands, Timor-Leste, Tonga, Vanuatu </p>
<p>R32<b>OAS-M</b> = This region includes the countries of Other Asia - medium and high income.<br/> Bhutan, Brunei Darussalam, French Polynesia, Guam, Malaysia, Maldives, New Caledonia, Singapore, Sri Lanka, Thailand </p>

<p>R32<b>PAK</b> = This region includes Pakistan and Afghanistan. </p>
<p>R32<b>RUS</b> = Russian Federation. </p>
<p>R32<b>SAF</b> = South Africa. </p>
<p>R32<b>SSA-L</b> = This region includes the countries of Subsahara Africa (excl. South Africa) - low income.<br/> 
Benin, Burkina Faso, Burundi, Cameroon, Cape Verde, Central African Republic, Chad, Comoros, Congo, C&ocirc;te d`Ivoire, Democratic Republic of the Congo, Djibouti, Eritrea, Ethiopia, Gambia, Ghana, Guinea, Guinea-Bissau, Kenya, Lesotho, Liberia, Madagascar, Malawi, Mali, Mauritania, Mozambique, Niger, Nigeria, Rwanda, Sao Tome and Principe, Senegal, Sierra Leone, Somalia, South Sudan, Sudan, Swaziland, Togo, Uganda, United Republic of Tanzania, Zambia, Zimbabwe </p>
<p>R32<b>SSA-M</b> = This region includes the countries of Subsahara Africa (excl. South Africa) - medium and high income.<br/>
 Angola, Botswana, Equatorial Guinea, Gabon, Mauritius, Mayotte, Namibia, R&eacute;union, Seychelles </p>
<p>R32<b>TUR</b> = Turkey. </p>
<p>R32<b>TWN</b> = Taiwan. </p>
<p>R32<b>USA</b> = United States of America. Includes:<br> Puerto Rico, United States Virgin Islands, United States of America </p>

<p><em>
The definition of low, medium and high income countries is based on the country grouping that was established for characterizing the variation of economic growth 
scenarios for the different SSPs (see <a href='static/download/ssp_suplementary text.pdf'>Supplementary Note</a>, pg. 11).
</em></p>

<h3>Country Level Data</h3>
<p>
Please note that country level data are denoted by ISO 3166-1 alpha3 three-letter country codes. A detailed (MS Excel) mapping table is available
<a href='static/download/ISO3166-1_codes_and_country_names.xlsx'> here</a>.
</p>






	                    <h3>Why Choose Us</h3>
	                    <p>
	                    	Lorem ipsum dolor sit amet, <strong>consectetur adipisicing elit</strong>, sed do eiusmod tempor incididunt ut labore et. 
	                    	Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo 
	                    	consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. 
	                    	Ut wisi enim ad minim veniam, quis <span class="violet">nostrud exerci</span> tation ullamcorper suscipit lobortis 
	                    	nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 
	                    	tempor incididunt.
	                    </p>
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
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Javascript -->
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/retina-1.1.0.min.js"></script>
        <script src="../assets/js/jquery.magnific-popup.min.js"></script>
        <script src="../assets/flexslider/jquery.flexslider-min.js"></script>
        <script src="../assets/js/jflickrfeed.min.js"></script>
        <script src="../assets/js/masonry.pkgd.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="../assets/js/jquery.ui.map.min.js"></script>
        <script src="../assets/js/scripts.js"></script>

    </body>

</html>