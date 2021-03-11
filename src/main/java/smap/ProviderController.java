package smap;


import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import smap.model.Kind;

@Controller
@RequestMapping("studyMap/{menu}/{service}")
public class ProviderController {

	@Resource
	MyProvider provider;
	
	@ModelAttribute
	Kind kind(
			@PathVariable("menu")String menu,
			@PathVariable("service")String service
			) {
		Kind kind = new Kind();
		kind.setMenu(menu);
		kind.setService(service);
		kind.setServiceUrl(menu+"/"+service+".jsp");
		return kind;
	}
	
	@ModelAttribute("data")
	Object mainData(
		
			@PathVariable("menu")String menu,
			@PathVariable("service")String service,
			HttpServletRequest req
			) {
		System.out.println("mainData() 실행");
		
		Action action = provider.getContext().getBean(menu+service, Action.class);
		
		HashMap<String, Object> map = new HashMap<>();
		
		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
//		return null;
	}
	
	
	@RequestMapping
	String view() {
		
		return "template";
	}
}
