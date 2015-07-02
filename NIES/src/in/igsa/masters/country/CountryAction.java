package in.igsa.masters.country;

import in.igsa.masters.MasterService;
import in.igsa.masters.MasterServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CountryAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private static MasterService service = new MasterServiceImpl();
	private List<CountryVo> countryList = new ArrayList<CountryVo>();
	private CountryVo country = new CountryVo();

	Map<String, Object> session = ActionContext.getContext().getSession();
	HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
	
	
	private String userId = (String)session.get("user_id");
	public String getAllCountry() throws Exception {
		countryList = service.getCountryList();
		linkAction(countryList);
		String id = (String) request.getParameter("id");
		if (id != null && !id.equals("")) {
			country = service.getCountryById(id);
			request.setAttribute("id", id);
			session.put("id", id);
		} 
		return SUCCESS;
	}

	public String deleteCountry() throws Exception {
		service.deleteCountryById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		String id = (String) session.get("id");
		if (id != null && !id.equals("")) {
			country.setTblId(id);
			country.setUpdatedBy(userId);
		}
		isSuccessfullyInserted = service.updateCountry(country);
		if (!validationSuccessful()) {
			countryList = service.getCountryList();
			linkAction(countryList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			isSuccessfullyInserted = 0;
			//addActionError("Successfully updated");
		} else {
			System.out.println("Insert Call");
			country.setCreatedBy(userId);
			service.insertCountry(country);
			//addActionError("Successfully inserted");
		}
		return SUCCESS;
	}

	private void linkAction(List<CountryVo> list) {
		int i=0;
		String link;
		for (CountryVo vo : list) {
			link = "<a href=\"country.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-country.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}

	private boolean validationSuccessful() {
		if (country.getCountryId() == null || country.getCountryId().trim().length() < 1) {
			addFieldError("country.countryName", "Country id is required");
		}
		if (country.getCountryName() == null || country.getCountryName().trim().length() < 1) {
			addFieldError("country.countryId", "Country name is required");
		}
		if (this.hasFieldErrors()) {
			return false;
		} else {
			return true;
		}
	}

	public static MasterService getService() {
		return service;
	}

	public static void setService(MasterService service) {
		CountryAction.service = service;
	}

	public List<CountryVo> getCountryList() {
		return countryList;
	}

	public void setCountryList(List<CountryVo> countryList) {
		this.countryList = countryList;
	}

	public CountryVo getCountry() {
		return country;
	}

	public void setCountry(CountryVo country) {
		this.country = country;
	}

	
	
}
