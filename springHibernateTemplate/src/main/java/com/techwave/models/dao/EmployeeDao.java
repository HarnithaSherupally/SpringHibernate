package com.techwave.models.dao;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;

import com.techwave.models.pojo.Dept;
import com.techwave.models.pojo.Emp;

@Controller
public class EmployeeDao {
	//@Autowired or use properties
	HibernateTemplate template;
	@Autowired
	SessionFactory sessionFactory;
	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	public List<Emp> extract(){
		
		return template.loadAll(Emp.class);
	}
	public List<Emp> GetEmpBasedOnDept(int dept){
		Emp e=new Emp();
		e.setDeptno(dept);
		return template.findByExample(e);
	}
	public List<Dept> GetDept(){
		return template.loadAll(Dept.class);
	}
	public List<Emp> GetEmpBasedOnDept1(int dept){
		return template.loadAll(Emp.class).stream().filter(e->e.getDeptno()==dept).collect(Collectors.toList());
		//return template.findByExample(e);
	}
	public String insertEmp(Emp e) {
		LocalDate d=LocalDate.parse(e.getHiredate());
		DateTimeFormatter D=DateTimeFormatter.ofPattern("dd-MMM-yyyy");
		String s=d.format(D);
		e.setHiredate(s);
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.persist(e);
		session.getTransaction().commit();
		session.close();
		return "1 row inserted";
	}
	public String insertDept(Dept d) {
		d.setDname(d.getDname().toUpperCase());
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.persist(d);
		session.getTransaction().commit();
		session.close();
		return "1 row inserted";
	}
	public String updateEmp(Emp e) {
		LocalDate d=LocalDate.parse(e.getHiredate());
		DateTimeFormatter D=DateTimeFormatter.ofPattern("dd-MMM-yyyy");
		String s=d.format(D);
		e.setHiredate(s);
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(e);
		session.getTransaction().commit();
		session.close();
		return "1 row updated";
	}
	
	public List<Emp> getEmp(int eno) {
		return template.loadAll(Emp.class).stream().filter(e->e.getEmpno()==eno).collect(Collectors.toList());
	}
}
