package com.spring.software;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.models.Accounting;
import com.models.Budget;
import com.models.Investment;
import com.models.Orderdata;
import com.models.User;
import com.spring.dao.AccountingDao;
import com.spring.dao.InvestmentDao;
import com.spring.dao.UserDao;



import com.spring.dao.BudgetDao;
@Controller
public class HomeController {

	private static final Object image = null;

	@Autowired
	InvestmentDao dao;
	
	@Autowired
    UserDao udao;
	
	@Autowired
	AccountingDao adao;

	@Autowired
	BudgetDao bdao;
	
	
	
	@RequestMapping("/")
	public String signin(Model model) {
		return "signin";
	}

	@RequestMapping("/Register")
	public String register(Model model) {
		return "signup";
	}

	@RequestMapping("/home")
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping("/back")
	public String back(Model model) {
		return "redirect:/admin";
	}
	
	
	@RequestMapping("/addproduct")
	public String addproduct(Model model) {
		return "addproduct";
	}
	
	@RequestMapping("/addbudget")
	public String addbudget(Model model) {
		return "addbudget";
	}
	
	@RequestMapping("/addinvest")
	public String addinvest(Model model) {
		return "addinvest";
	}
	
	
	@RequestMapping("/addacc")
	public String addaccc(@RequestParam("name") String name,@RequestParam("description") String desc,
			              @RequestParam("price") int price,@RequestParam("image") File file,Model m) throws FileNotFoundException {
		m.addAttribute("name", name);
		m.addAttribute("desc", desc);
		m.addAttribute("price", price);
		m.addAttribute("image", file);
		adao.add(m);
		return "redirect:/admin";
		
	}
	
	@RequestMapping("/addbud")
	public String addbud(@RequestParam("name") String name,@RequestParam("description") String desc,
			              @RequestParam("price") int price,@RequestParam("image") File file,Model m) throws FileNotFoundException {
		m.addAttribute("name", name);
		m.addAttribute("desc", desc);
		m.addAttribute("price", price);
		m.addAttribute("image", file);
		bdao.add(m);
		return "redirect:/admin";
		
	}
	
	@RequestMapping("/addinv")
	public String addinv(@RequestParam("name") String name,@RequestParam("description") String desc,
			              @RequestParam("price") int price,@RequestParam("image") File file,Model m) throws FileNotFoundException {
		m.addAttribute("name", name);
		m.addAttribute("desc", desc);
		m.addAttribute("price", price);
		m.addAttribute("image", file);
		dao.add(m);
		return "redirect:/admin";
		
	}
	
	
	@RequestMapping("/admin")
	public String admin(Model m) {
		List<User> list = udao.getuserdetails();
		m.addAttribute("list", list);
		return "admin";
	}
	
	@RequestMapping(value = "/admin-invest")
	public String admininvest(Model m)
	{
		List<Investment> list = dao.getInvestmentApps();
		m.addAttribute("list", list);
		return "admin/investment";
	}
	
	@RequestMapping(value = "/admin-budget")
	public String adminbudget(Model m)
	{
		List<Budget> list = bdao.getBudgetApps();
		m.addAttribute("list", list);
		return "admin/budget";
	}
	@RequestMapping(value = "/admin-acc")
	public String adminacc(Model m)
	{
		List<Accounting> list = adao.getAccountingApps();
		m.addAttribute("list", list);
		return "admin/accounting";
	}
	
	@RequestMapping(value ="/delete/{id}")
	public String remove(@PathVariable int id,Model m) {
		User user = udao.getuserbyId(id);
		udao.delete(user);
		return "redirect:/admin";
	}
	
	@RequestMapping(value ="/deleteinv/{id}")
	public String removeinv(@PathVariable int id,Model m) {
		Investment product = dao.getProductById(id);
		dao.delete(product);
		return "redirect:/admin";
	}
	
	@RequestMapping(value ="/deletepro/{id}")
	public String removeproduct(@PathVariable int id,Model m) {
		Accounting product = adao.getProductById(id);
		adao.delete(product);
		return "redirect:/admin";
	}
	
	@RequestMapping(value ="/deletebud/{id}")
	public String removebud(@PathVariable int id,Model m) {
		Budget product = bdao.getProductById(id);
		bdao.delete(product);
		return "redirect:/admin";
	}

	@RequestMapping("/investment")
	public String invest(Model m) {
		List<Investment> list = dao.getInvestmentApps();
		m.addAttribute("list", list);
		return "investment";
	}

	@RequestMapping("/getimage/{id}")
	public void getImage(HttpServletResponse response, @PathVariable("id") int id) throws SQLException, IOException {
		response.setContentType("image/png");
		Blob img = dao.getPhotobyId(id);
		byte[] bytes = img.getBytes(1, (int) img.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
	
	
	@RequestMapping("/accounting")
	public String accounting(Model m) {
		List<Accounting> list = adao.getAccountingApps();
		m.addAttribute("list", list);
		return "accounting";
	}
	
	@RequestMapping("/getimageacc/{id}")
	public void getImages(HttpServletResponse response, @PathVariable("id") int id) throws SQLException, IOException {
		response.setContentType("image/png");
		Blob img = adao.getPhotobyId(id);
		byte[] bytes = img.getBytes(1, (int) img.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
    
	@RequestMapping("/budget")
	public String budget(Model m) {
		List<Budget> list = bdao.getBudgetApps();
		m.addAttribute("list", list);
		return "budget";
	}
	
	@RequestMapping("/getimagebud/{id}")
	public void getbImages(HttpServletResponse response, @PathVariable("id") int id) throws SQLException, IOException {
		response.setContentType("image/png");
		Blob img = bdao.getPhotobyId(id);
		byte[] bytes = img.getBytes(1, (int) img.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping(value = "/edit/{id}")
	public String Edit(@PathVariable int id, Model m) {
		User user = udao.getuserbyId(id);
		List<Orderdata> softs = udao.getSoftwarePurchaseDetails(id);
		m.addAttribute("user", user);
		m.addAttribute("softs", softs);
		
		return "EditProfile";
	}
	
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") User user) {
		udao.update(user);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/buyacc/{id}")
	public String buy(@PathVariable int id, Model m)
	{
		Accounting acc = adao.getProductById(id);
		m.addAttribute("product", acc);
		return "payment";
	}
	
	@RequestMapping(value = "/buyinvt/{id}")
	public String buyInvt(@PathVariable int id, Model m)
	{
		Investment i = dao.getProductById(id);
		m.addAttribute("product", i);
		return "payment";
	}
	
	@RequestMapping(value = "/buybud/{id}")
	public String buybud(@PathVariable int id, Model m)
	{
		Budget b = bdao.getProductById(id);
		m.addAttribute("product", b);
		return "payment";
	}
	
	@RequestMapping("/done")
	public String tnxcompleted() {
		return "transactionDone";
	}
	
	
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/detail")
	public String detail(Model model)
	{
		return "detail";
	}
	
	@RequestMapping("/detail-1")
	public String detail1(Model model)
	{
		return "detail-1";
	}
	
	@RequestMapping("/detail-2")
	public String detail2(Model model)
	{
		return "detail-2";
	}
	
	@RequestMapping("/detail-3")
	public String detail3(Model model)
	{
		return "detail-3";
	}
	
	@RequestMapping("/detail-4")
	public String detail4(Model model)
	{
		return "detail-4";
	}
	
	@RequestMapping("/detail-5")
	public String detail5(Model model)
	{
		return "detail-5";
	}
	
	@RequestMapping("/detail-6")
	public String detail6(Model model)
	{
		return "detail-6";
	}
	
	@RequestMapping("/detail-7")
	public String detail7(Model model)
	{
		return "detail-7";
	}
	
	@RequestMapping("/detail-8")
	public String detail8(Model model)
	{
		return "detail-8";
	}
	
	@RequestMapping("/detail-9")
	public String detail9(Model model)
	{
		return "detail-9";
	}
	
	@RequestMapping("/detail-10")
	public String detail10(Model model)
	{
		return "detail-10";
	}
	
	@RequestMapping("/detail-11")
	public String detail11(Model model)
	{
		return "detail-11";
	}
	
	@RequestMapping("/detail-12")
	public String detail12(Model model)
	{
		return "detail-12";
	}
	
	@RequestMapping("/detail-13")
	public String detail13(Model model)
	{
		return "detail-13";
	}
	
	@RequestMapping("/detail-14")
	public String detail14(Model model)
	{
		return "detail-14";
	}
	
	@RequestMapping("/detail-15")
	public String detail15(Model model)
	{
		return "detail-15";
	}
	
	@RequestMapping("/detail-16")
	public String detail16(Model model)
	{
		return "detail-16";
	}
	
	@RequestMapping("/detail-17")
	public String detail17(Model model)
	{
		return "detail-17";
	}
	
	@RequestMapping("/detail-18")
	public String detail18(Model model)
	{
		return "detail-18";
	}
	
	@RequestMapping("/detail-19")
	public String detail19(Model model)
	{
		return "detail-19";
	}
	
	@RequestMapping("/detail-20")
	public String detail20(Model model)
	{
		return "detail-20";
	}
	
}
