package in.igsa.masters.country;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class JSONCountry {
	 private static final long serialVersionUID = 5078264277068533593L;
	    private static final Log log = LogFactory.getLog(JSONCountry.class);

	    // Your result List
	    private List<CountryVo> gridModel;

	    // get how many rows we want to have into the grid - rowNum attribute in the
	    // grid
	    private Integer rows = 0;

	    // Get the requested page. By default grid sets this to 1.
	    private Integer page = 0;

	    // sorting order - asc or desc
	    private String sord;

	    // get index row - i.e. user click to sort.
	    private String sidx;

	    // Search Field
	    private String searchField;

	    // The Search String
	    private String searchString;

	    // Limit the result when using local data, value form attribute rowTotal
	    private Integer totalrows;

	    // he Search Operation
	    // ['eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc']
	    private String searchOper;

	    // Your Total Pages
	    private Integer total = 0;

	    // All Records
	    private Integer records = 0;

	    private boolean loadonce = false;
	    private Map<String, Object> session;
	    private List<CountryVo> myCountry;

	    /**
	     * @return how many rows we want to have into the grid
	     */
	    public Integer getRows() {
	        return rows;
	    }

	    /**
	     * @param rows how many rows we want to have into the grid
	     */
	    public void setRows(Integer rows) {
	        this.rows = rows;
	    }

	    /**
	     * @return current page of the query
	     */
	    public Integer getPage() {
	        return page;
	    }

	    /**
	     * @param page current page of the query
	     */
	    public void setPage(Integer page) {
	        this.page = page;
	    }

	    /**
	     * @return total pages for the query
	     */
	    public Integer getTotal() {
	        return total;
	    }

	    /**
	     * @param total total pages for the query
	     */
	    public void setTotal(Integer total) {
	        this.total = total;
	    }

	    /**
	     * @return total number of records for the query. e.g. select count(*) from
	     *         table
	     */
	    public Integer getRecords() {
	        return records;
	    }

	    /**
	     * @param records total number of records for the query. e.g. select count(*)
	     *               from table
	     */
	    public void setRecords(Integer records) {

	        this.records = records;

	        if (this.records > 0 && this.rows > 0) {
	            this.total = (int) Math.ceil((double) this.records / (double) this.rows);
	        } else {
	            this.total = 0;
	        }
	    }

	    /**
	     * @return an collection that contains the actual data
	     */
	    public List<CountryVo> getGridModel() {
	        return gridModel;
	    }

	    /**
	     * @param gridModel an collection that contains the actual data
	     */
	    public void setGridModel(List<CountryVo> gridModel) {
	        this.gridModel = gridModel;
	    }

	    /**
	     * @return sorting order
	     */
	    public String getSord() {
	        return sord;
	    }

	    /**
	     * @param sord sorting order
	     */
	    public void setSord(String sord) {
	        this.sord = sord;
	    }

	    /**
	     * @return get index row - i.e. user click to sort.
	     */
	    public String getSidx() {
	        return sidx;
	    }

	    /**
	     * @param sidx get index row - i.e. user click to sort.
	     */
	    public void setSidx(String sidx) {
	        this.sidx = sidx;
	    }

	    public void setSearchField(String searchField) {
	        this.searchField = searchField;
	    }

	    public void setSearchString(String searchString) {
	        this.searchString = searchString;
	    }

	    public void setSearchOper(String searchOper) {
	        this.searchOper = searchOper;
	    }

	    public void setLoadonce(boolean loadonce) {
	        this.loadonce = loadonce;
	    }

	    public void setSession(Map<String, Object> session) {
	        this.session = session;
	    }

	    public void setTotalrows(Integer totalrows) {
	        this.totalrows = totalrows;
	    }

}
