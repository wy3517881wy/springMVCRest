package com.test.springMVCRest.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.test.springMVCRest.dao.Employee;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("employees")
public class EmployeeRestController {

	@RequestMapping(method = RequestMethod.POST ,value = "/depts/{deptId}/empId/{empId}")
	@ResponseBody
	public JSONObject listEmps(@PathVariable Long deptId,@PathVariable("empId") Long empId) {
	    List<Employee> emps = new ArrayList<>();
	    emps.add(new Employee(1L, deptId+""));
	    emps.add(new Employee(2L, empId+""));
	    JSONArray ja = new JSONArray();
	    ja.add(new Employee(1L, deptId+"2"));
	    ja.add(new Employee(2L, empId+"2"));
	    System.out.println(ja.toString());
	    JSONObject jo = new JSONObject();
	    jo.put("total", "28");
	    jo.put("rows", ja);
	    return jo;
//	    return "/depts/deptsViews";
//	    ModelAndView mv = new ModelAndView();
//        //封装要显示到视图的数据
//        mv.addObject("msg",ja);
//        //视图名
//        mv.setViewName("/depts/deptsViews");
//        return mv;
	}
	@RequestMapping("/index2")
	@ResponseBody
	public JSONArray listEmps2() {
	    List<Employee> emps = new ArrayList<>();
	    emps.add(new Employee(1L, "emp3"));
	    emps.add(new Employee(2L, "emp4"));
	    JSONArray ja = new JSONArray();
	    ja.add(new Employee(1L, "emp3"));
	    ja.add(new Employee(2L, "emp4"));
	    System.out.println(ja.toString());
	    return ja;
	}
}
