package gmu.speaker.model;

import java.io.Serializable;

public class Login implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8878068432072165564L;
	private String email;
	private String password;
	private String id;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
