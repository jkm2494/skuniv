package kr.ac.cu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.PersonService;
import kr.ac.cu.vo.PersonVO;

@Controller
public class PersonController {
	@Autowired
	private PersonService personService;

	@RequestMapping("person")
	public String personList(Model model) {
		List<PersonVO> personList = personService.personList();
		model.addAttribute("personList", personList);
		return "/perlist";
	}

	@RequestMapping("perJoinForm")
	public String joinForm() {
		return "perJoinForm";
	}

	@RequestMapping("perJoin")
	public String join(@ModelAttribute PersonVO vo, HttpSession session) {
		System.out.println(vo);
		personService.addPerson(vo);
		return "redirect:/perJoinForm";
	}

	@RequestMapping("checkIdForm")
	public String checkid(Model model, @RequestParam("pid") String pid, @ModelAttribute PersonVO vo) {
		System.out.println("pid : " + pid);
		boolean check = personService.checkId(vo);
		System.out.println("cont check" + check);

		return "redirect:/jsp/confirmId.jsp?check=" + check;
	}

	@RequestMapping("checkId")
	public String checkId(Model model, @RequestParam("pid") String pid, @ModelAttribute PersonVO vo,
			HttpSession session) {
		System.out.println("pid : " + pid);
		boolean check = personService.checkId(vo);
		System.out.println("cont check" + check);
		return "redirect:/jsp/checkId.jsp?check=" + check;

	}



	@RequestMapping("perDelete")
	public String delete(PersonVO vo, HttpSession session) {
		System.out.println(vo);
		int count = personService.deletePerson(vo);
		if (count == 1) {
			return "redirect:/person";
		} else {
			return "redirect:/person";
		}
	}

	@RequestMapping("perUpdateForm")
	public String updateForm() {
		return "perUpdateForm";
	}

	@RequestMapping("perUpdate")
	public String update(PersonVO vo) {
		System.out.println(vo.toString());
		personService.updatePerson(vo);

		return "redirect:person";
	}

	@RequestMapping("logout")
	public String loginout(HttpSession session) {

		session.removeAttribute("loginEmail");
		session.setAttribute("loginEmail", null);
		session.invalidate();
		return "redirect:main1";
	}

	@RequestMapping("loginCheck")
	public String loginform(@ModelAttribute PersonVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println(vo);
		System.out.println("service: " + personService.loginCheck(vo.getPid()));

	


		if (personService.loginCheck(vo.getPid()) == null) {
			personService.addPerson(vo);
		}
		session.setAttribute("loginEmail", vo.getPid());
		session.setAttribute("loginName", vo.getPname());
		return "redirect:main1";
	}

	@RequestMapping("main1")
	public String main(Model model) {

		return "/main";
	}

}
