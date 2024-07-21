package springmvc.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "email" }) })
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String name;
	@Column(unique = true, nullable = false)
	private String email;
	@Column(name = "dob", nullable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "address_id")
	private Address address;
	private String gender;
	private String subscription;
	private String services;
	private String password;
	@Transient
	private String confirm_password;

	@NotNull(message = "Phone number is required")
	@Pattern(regexp = "\\d{10}", message = "Invalid phone number")
	private String phone;

	public User() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getSubscription() {
		return subscription;
	}

	public void setSubscription(String subscription) {
		this.subscription = subscription;
	}

	public String getServices() {
		return services;
	}

	public void setServices(String services) {
		this.services = services;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getConfirm_password() {
		return confirm_password;
	}

	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}

	public User(long id, String name, String email, Date dob, Address address, String gender, String subscription,
			String services, String password, String confirm_password, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.dob = dob;
		this.address = address;
		this.gender = gender;
		this.subscription = subscription;
		this.services = services;
		this.password = password;
		this.confirm_password = confirm_password;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", dob=" + dob + ", address=" + address
				+ ", gender=" + gender + ", subscription=" + subscription + ", services=" + services + ", password="
				+ password + ", confirm_password=" + confirm_password + ", phone=" + phone + "]";
	}

}
