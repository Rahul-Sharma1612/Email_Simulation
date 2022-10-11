package com.email.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.email.dao.SignUpDao;
import com.email.model.Email_info;
import com.email.model.SignUpDto;

@Service
public class SignUpService {

	@Autowired
	SignUpDao signUpDao;

	SignUpDto sdt;

	public void createSignUp(SignUpDto signUpDto) {
		signUpDao.saveSignUp(signUpDto);
	}

	public SignUpDto getLogin(String userName, String password) {
		sdt = signUpDao.getLogin(userName, password);
		return sdt;
	}

	public String composeMail(Email_info info, String em) {
		System.out.println("service");
		signUpDao.composeMail(info, em);
		return null;
	}

	public List inbox(String userName) {
		List<Email_info> em = signUpDao.inbox(userName);
		return em;
	}

	public List sent(String userName) {
		List<Email_info> em = signUpDao.sent(userName);
		return em;
	}

//	public List<Email_info> draft(String userName) {
//		List<Email_info> em = signUpDao.draft(userName);
//		return em;
//	}

}
