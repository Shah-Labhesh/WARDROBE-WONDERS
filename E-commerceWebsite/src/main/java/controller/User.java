package controller;

public class User {


	private String userName;
	private String userContact;
	private String userEmail;
	private String encryptPassword;
	
	public User(String userName, String userContact, String userEmail, String encryptPassword) {

		this.userName = userName;
		this.userContact = userContact;
		this.userEmail = userEmail;
		this.encryptPassword = encryptPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserContact() {
		return userContact;
	}

	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getEncryptPassword() {
		return encryptPassword;
	}

	public void setEncryptPassword(String encryptPassword) {
		this.encryptPassword = encryptPassword;
	}
	
	
	
}
