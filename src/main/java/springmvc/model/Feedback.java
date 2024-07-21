package springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Feedback {

	@Id
	@Column(name = "_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int user_id;
	@Column(name = "name")
	private String user_name;
	@Column(name = "email")
	private String user_email;
	@Column(name = "msg", length = 1000)
	private String user_message;

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_message() {
		return user_message;
	}

	public void setUser_message(String user_message) {
		this.user_message = user_message;
	}

	public Feedback(String user_name, String user_email, String user_message) {
		super();
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_message = user_message;
	}

	public Feedback() {
		super();
	}

}
