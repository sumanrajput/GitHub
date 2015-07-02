package in.igsa.masters.prototype;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class PrototypeVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String modelId;
	private String version;
	private String currentVersion;
	private String versionStatus;
	private String personName;
	private String entryDate;
	private String modelDocumentation;
	private String modelSolutionConcept;
	private String modelSolutionHorizon;
	private String modelSolutionMethod;
	private String modelExogenousGrowthDrivers;
	private String costMeasure;
	private String baseYear;
	private String timeHorizon;
	private String timeStep;
	private String regionalCoverage;
	private String numberOfRegions;
	private String trade;
	private String numberOfSectors;
	private String energyServiceSectors;
	private String economicSectors;
	private String numberOfTechnologies;
	private String energyTechnologies;
	private String energyTechnologySubstitution;
	private String greenhouseGasEmissions;
	private String climateChange;
	private String coLinkages;
	private String resourceUse;
	private String landUse;
	private String development;
	private String tableIndex;
	private String link;
	
	public String getTblId() {
		return tblId;
	}
	public void setTblId(String tblId) {
		this.tblId = tblId;
	}
	public String getModelId() {
		return modelId;
	}
	public void setModelId(String modelId) {
		this.modelId = modelId;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getCurrentVersion() {
		return currentVersion;
	}
	public void setCurrentVersion(String currentVersion) {
		this.currentVersion = currentVersion;
	}
	public String getVersionStatus() {
		return versionStatus;
	}
	public void setVersionStatus(String versionStatus) {
		this.versionStatus = versionStatus;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public String getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}
	public String getModelDocumentation() {
		return modelDocumentation;
	}
	public void setModelDocumentation(String modelDocumentation) {
		this.modelDocumentation = modelDocumentation;
	}
	public String getModelSolutionConcept() {
		return modelSolutionConcept;
	}
	public void setModelSolutionConcept(String modelSolutionConcept) {
		this.modelSolutionConcept = modelSolutionConcept;
	}
	public String getModelSolutionHorizon() {
		return modelSolutionHorizon;
	}
	public void setModelSolutionHorizon(String modelSolutionHorizon) {
		this.modelSolutionHorizon = modelSolutionHorizon;
	}
	public String getModelSolutionMethod() {
		return modelSolutionMethod;
	}
	public void setModelSolutionMethod(String modelSolutionMethod) {
		this.modelSolutionMethod = modelSolutionMethod;
	}
	public String getModelExogenousGrowthDrivers() {
		return modelExogenousGrowthDrivers;
	}
	public void setModelExogenousGrowthDrivers(String modelExogenousGrowthDrivers) {
		this.modelExogenousGrowthDrivers = modelExogenousGrowthDrivers;
	}
	public String getCostMeasure() {
		return costMeasure;
	}
	public void setCostMeasure(String costMeasure) {
		this.costMeasure = costMeasure;
	}
	public String getBaseYear() {
		return baseYear;
	}
	public void setBaseYear(String baseYear) {
		this.baseYear = baseYear;
	}
	public String getTimeHorizon() {
		return timeHorizon;
	}
	public void setTimeHorizon(String timeHorizon) {
		this.timeHorizon = timeHorizon;
	}
	public String getTimeStep() {
		return timeStep;
	}
	public void setTimeStep(String timeStep) {
		this.timeStep = timeStep;
	}
	public String getRegionalCoverage() {
		return regionalCoverage;
	}
	public void setRegionalCoverage(String regionalCoverage) {
		this.regionalCoverage = regionalCoverage;
	}
	public String getNumberOfRegions() {
		return numberOfRegions;
	}
	public void setNumberOfRegions(String numberOfRegions) {
		this.numberOfRegions = numberOfRegions;
	}
	public String getTrade() {
		return trade;
	}
	public void setTrade(String trade) {
		this.trade = trade;
	}
	public String getNumberOfSectors() {
		return numberOfSectors;
	}
	public void setNumberOfSectors(String numberOfSectors) {
		this.numberOfSectors = numberOfSectors;
	}
	public String getEnergyServiceSectors() {
		return energyServiceSectors;
	}
	public void setEnergyServiceSectors(String energyServiceSectors) {
		this.energyServiceSectors = energyServiceSectors;
	}
	public String getEconomicSectors() {
		return economicSectors;
	}
	public void setEconomicSectors(String economicSectors) {
		this.economicSectors = economicSectors;
	}
	public String getNumberOfTechnologies() {
		return numberOfTechnologies;
	}
	public void setNumberOfTechnologies(String numberOfTechnologies) {
		this.numberOfTechnologies = numberOfTechnologies;
	}
	public String getEnergyTechnologies() {
		return energyTechnologies;
	}
	public void setEnergyTechnologies(String energyTechnologies) {
		this.energyTechnologies = energyTechnologies;
	}
	public String getEnergyTechnologySubstitution() {
		return energyTechnologySubstitution;
	}
	public void setEnergyTechnologySubstitution(String energyTechnologySubstitution) {
		this.energyTechnologySubstitution = energyTechnologySubstitution;
	}
	public String getGreenhouseGasEmissions() {
		return greenhouseGasEmissions;
	}
	public void setGreenhouseGasEmissions(String greenhouseGasEmissions) {
		this.greenhouseGasEmissions = greenhouseGasEmissions;
	}
	public String getClimateChange() {
		return climateChange;
	}
	public void setClimateChange(String climateChange) {
		this.climateChange = climateChange;
	}
	public String getCoLinkages() {
		return coLinkages;
	}
	public void setCoLinkages(String coLinkages) {
		this.coLinkages = coLinkages;
	}
	public String getResourceUse() {
		return resourceUse;
	}
	public void setResourceUse(String resourceUse) {
		this.resourceUse = resourceUse;
	}
	public String getLandUse() {
		return landUse;
	}
	public void setLandUse(String landUse) {
		this.landUse = landUse;
	}
	public String getDevelopment() {
		return development;
	}
	public void setDevelopment(String development) {
		this.development = development;
	}
	public String getTableIndex() {
		return tableIndex;
	}
	public void setTableIndex(String tableIndex) {
		this.tableIndex = tableIndex;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
