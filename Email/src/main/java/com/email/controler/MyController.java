package com.email.controler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.email.model.Email_info;
import com.email.model.SignUpDto;
import com.email.service.SignUpService;

@Controller
public class MyController {
	@Autowired
	SignUpService SignUpService;

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/SignUp")
	public String signup() {
		return "SignUp";
	}

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute SignUpDto sDto) {

		System.out.println(sDto);

		SignUpService.createSignUp(sDto);
		return "SuccessPage";
	}

	@RequestMapping("/Login")
	public String login() {
		return "Login";
	}

	@RequestMapping(path = "/loginform", method = RequestMethod.POST)
	public ModelAndView loginForm(@RequestParam String userName, @RequestParam String password,
			HttpServletRequest req) {
		HttpSession ss = req.getSession();
		SignUpDto sdt = SignUpService.getLogin(userName, password);

		if (sdt != null) {
			ss.setAttribute("us", userName);
			System.out.println(sdt);
			return new ModelAndView("main", "msg", "Login Successfull");
		} else {
			return new ModelAndView("Login", "msg", "Login failed");
		}
	}

	// Compose
	@RequestMapping("compose")
	public ModelAndView compose(@ModelAttribute Email_info e_info, HttpServletRequest req) {
		HttpSession ss = req.getSession(false);
		if (ss != null && ss.getAttribute("us") != null) {
			String us = (String) ss.getAttribute("us");

			return new ModelAndView("compose", "msg", "Welcome to compose Mr/Mrs " + us);

		} else {
			return new ModelAndView("Login", "msg", "Please Login First");
		}
	}

	// ComposeMail
	@RequestMapping(path = "/composemail", method = RequestMethod.POST)
	public ModelAndView composeMail(@ModelAttribute Email_info info, HttpServletRequest req) {
		HttpSession ss = req.getSession(false);
		String em = (String) ss.getAttribute("us");
		if (em != null) {
			System.out.println("controller");
			SignUpService.composeMail(info, em);
		}
		return null;

	}

	// @RequestMapping("inbox")
	@GetMapping("inbox")
	public ModelAndView inbox(HttpServletRequest req) {
		HttpSession ss = req.getSession(false);
		String user = (String) ss.getAttribute("us");

		if (ss != null && ss.getAttribute("us") != null) {
			List<Email_info> li = SignUpService.inbox(user);

			String us = (String) ss.getAttribute("us");
			return new ModelAndView("inbox", "msg", li);
		} else {
			return new ModelAndView("Login", "msg", "Please Login First");

		}
	}

	@RequestMapping("sent")
	public ModelAndView sent(HttpServletRequest req) {
		HttpSession ss = req.getSession(false);
		String user = (String) ss.getAttribute("us");

		if (ss != null && ss.getAttribute("us") != null) {
			List<Email_info> li = SignUpService.sent(user);

			String us = (String) ss.getAttribute("us");
			return new ModelAndView("sent", "msg", li);
		} else {
			return new ModelAndView("Login", "msg", "Please Login First");

		}
	}
	
//	@RequestMapping("draft")
//	public ModelAndView draft(HttpServletRequest req) {
//		HttpSession ss = req.getSession(false);
//		String user = (String) ss.getAttribute("us");
//
//		if (ss != null && ss.getAttribute("us") != null) {
//			List<Email_info> li = SignUpService.draft(user);
//
//			String us = (String) ss.getAttribute("us");
//			return new ModelAndView("draft", "msg", li);
//		} else {
//			return new ModelAndView("Login", "msg", "Please Login First");
//
//		}
//	}

	@RequestMapping("logout")
	public ModelAndView logout(HttpServletRequest req) {
		HttpSession ss = req.getSession(false);
		if (ss != null && ss.getAttribute("us") != null) {
			String us = (String) ss.getAttribute("us");
			ss.invalidate();
			return new ModelAndView("LogoutSuccess", "msg", "Logout Successfull " + us);
		} else {
			return new ModelAndView("Login", "msg", "Please Login First");
		}
	}

}
