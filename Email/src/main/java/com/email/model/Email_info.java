package com.email.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Email_info {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int eid;
	private String to_email;
	private String from_email;
	private String subject;
	private String message;
	private String drafts;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "mail_user", joinColumns = @JoinColumn(name = "eid"), inverseJoinColumns = @JoinColumn(name = "id"))
	private List<SignUpDto> listdto;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getTo_email() {
		return to_email;
	}

	public void setTo_email(String to_email) {
		this.to_email = to_email;
	}

	public String getFrom_email() {
		return from_email;
	}

	public void setFrom_email(String from_email) {
		this.from_email = from_email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List<SignUpDto> getListdto() {
		return listdto;
	}

	public void setListdto(List<SignUpDto> listdto) {
		this.listdto = listdto;
	}

	public String getDrafts() {
		return drafts;
	}

	public void setDrafts(String drafts) {
		this.drafts = drafts;
	}

	@Override
	public String toString() {
		return "Email_info [eid=" + eid + ", to_email=" + to_email + ", from_email=" + from_email + ", subject="
				+ subject + ", message=" + message + ", drafts=" + drafts + ", listdto=" + listdto + "]";
	}

}
