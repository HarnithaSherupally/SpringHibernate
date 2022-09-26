package com.techwave.controllers;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.techwave.models.dao.EmployeeDao;
import com.techwave.models.pojo.Dept;
import com.techwave.models.pojo.Emp;
@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao employeeDao;
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}
	@RequestMapping("/retrieve")
	public String extract(Model M) {
		M.addAttribute("list",employeeDao.extract());
		return "employeeData";
	}
	@RequestMapping("/GetEmpBasedOnDept")
	public String GetEmpBasedOnDept(Model M) {
		M.addAttribute("dlist",employeeDao.GetDept());
		return "GetEmpBasedOnDept";
	}
	@RequestMapping("/GettingEmpBasedOnDept")
	public String GettingEmpBasedOnDept(@RequestParam("department") int dept,Model M)
	{
		System.out.println(dept);
		M.addAttribute("elist",employeeDao.GetEmpBasedOnDept1(dept));
		return "GettingEmpBasedOnDept";
	}
	@RequestMapping("/insertEmp")
	public String insertEmp(Model M)
	{
		M.addAttribute("dlist",employeeDao.GetDept());
		return "insertEmp";
	}
	@RequestMapping("/insertingEmp")
	public String insertingEmp(@ModelAttribute("e") Emp e,Model M) {
		M.addAttribute("msg", employeeDao.insertEmp(e));
		return "insertEmp";
	}
	@RequestMapping("/insertDept")
	public String insertDep() {
		return "insertDept";
	}
	@RequestMapping("/insertingDept")
	public String insertingDept(@ModelAttribute("d") Dept d,Model M) {
		M.addAttribute("msg", employeeDao.insertDept(d));
		return "insertDept";
	}
	@RequestMapping("/updateEmp")
	public String updateEmp(Model M)
	{
		M.addAttribute("elist",employeeDao.extract());
		return "updateEmp";
	}
	@RequestMapping("/updatingEmp")
	public String updatingEmp(@ModelAttribute("e") Emp e,Model M,@RequestParam("emp") int eno) {
		M.addAttribute("dlist",employeeDao.GetDept());
		Emp E= employeeDao.getEmp(eno).get(0);
		DateTimeFormatter D=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		DateTimeFormatter D1=DateTimeFormatter.ofPattern("yyyy-MM-dd");
		System.out.println(E.getHiredate());
		LocalDate L=LocalDate.parse(E.getHiredate(),D);
		
		E.setHiredate(D1.format(L));
		System.out.println(E.getHiredate());
		M.addAttribute("employee", E);
		return "updatingEmp";
	}
	@RequestMapping("/updatedEmp")
	public String updatedEmp(@ModelAttribute("e") Emp e,Model M)
	{
		M.addAttribute("msg", employeeDao.updateEmp(e));
		return "updatingEmp";
	}
}