package com.email.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.email.model.Email_info;
import com.email.model.SignUpDto;

@Repository
public class SignUpDao {

	@Autowired
	SessionFactory sf;

	public void saveSignUp(SignUpDto signUpDto) {
		Session ss = sf.openSession();
		ss.save(signUpDto);
		ss.beginTransaction().commit();
		ss.close();
	}

	public SignUpDto getLogin(String userName, String password) {
		Session ss = sf.openSession();
		Criteria cr = ss.createCriteria(SignUpDto.class);
		cr.add(Restrictions.eq("email", userName));
		cr.add(Restrictions.eq("password", password));
		SignUpDto sdt = (SignUpDto) cr.uniqueResult();
		ss.beginTransaction().commit();
		ss.close();
		return sdt;
	}

	public SignUpDto getPersonByMail(String em) {
		System.out.println("========get person=====");
		Session ss = sf.openSession();

		Criteria ecr = ss.createCriteria(SignUpDto.class);
		ecr.add(Restrictions.eq("email", em));
		SignUpDto sdt = (SignUpDto) ecr.uniqueResult();

		System.out.println(sdt + "   checking sdt");
		ss.close();
		return sdt;
	}

	public void composeMail(Email_info info, String em) {

		SignUpDto sdt = getPersonByMail(info.getFrom_email());
		SignUpDto sdt1 = getPersonByMail(info.getTo_email());
		Session ss = sf.openSession();

		if (sdt1 == null) {
			draft(sdt1, info);
		}

		List<SignUpDto> slist = new ArrayList<SignUpDto>();
		slist.add(sdt);
		slist.add(sdt1);

		info.setListdto(slist);
		ss.save(info);
		ss.beginTransaction().commit();
		ss.close();
	}

	public List inbox(String userName) {
		Session ss = sf.openSession();
		// getting the id from of the login user
		Query cr = ss.createQuery("from SignUpDto where email=?1");
		cr.setParameter(1, userName);
		SignUpDto sdt = (SignUpDto) cr.uniqueResult();
		System.out.println("login user id" + sdt.getId());
		ArrayList<Email_info> al = new ArrayList<Email_info>();

		// creating query in mapped table
		Query qr = ss.createSQLQuery("select eid from mail_user where id=?1");
		qr.setParameter(1, sdt.getId());
		List<Integer> list = qr.list();
		for (Integer integer : list) {
			int i = integer;
			System.out.println("interger" + i);

			Query query = ss.createQuery("From Email_info where eid=?1 and to_email=?2");
			query.setParameter(1, i);
			query.setParameter(2, userName);
			Email_info in = (Email_info) query.uniqueResult();
			if (in != null) {

				al.add(in);

			}
		}
		ss.close();
		return al;

	}

	public List sent(String userName) {
		Session ss = sf.openSession();
		// getting the id from of the login user
		Query cr = ss.createQuery("from SignUpDto where email=?1");
		cr.setParameter(1, userName);
		SignUpDto sdt = (SignUpDto) cr.uniqueResult();
		System.out.println("login user id" + sdt.getId());
		ArrayList<Email_info> al = new ArrayList<Email_info>();

		// creating query in mapped table
		Query qr = ss.createSQLQuery("select eid from mail_user where id=?1");
		qr.setParameter(1, sdt.getId());
		List<Integer> list = qr.list();
		for (Integer integer : list) {
			int i = integer;
			System.out.println("interger" + i);
			Query query = ss.createQuery("From Email_info where eid=?1 and from_email=?2");
			query.setParameter(1, i);
			query.setParameter(2, userName);
			Email_info in = (Email_info) query.uniqueResult();
			if (in != null) {
				al.add(in);
			}
		}
		ss.close();
		return al;

	}

	public List<SignUpDto> draft(SignUpDto sdt, Email_info info) {
		ArrayList<SignUpDto> arlt = new ArrayList<SignUpDto>();
		arlt.add(sdt);
		System.out
				.println("details" + " " + info.getMessage() + "    " + info.getTo_email() + "  " + info.getSubject());
		return arlt;
	}
}
