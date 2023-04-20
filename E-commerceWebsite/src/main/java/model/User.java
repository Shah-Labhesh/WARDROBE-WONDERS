package model;

public class User {

	private String userName;
	private String userContact;
	private String userEmail;
	private String userAddress;
	private String encryptPassword;
	private String userImagePath;

	public User(String userName, String userContact, String userEmail,String userAddress,  String userImagePath, String encryptPassword) {

		this.userName = userName;
		this.userContact = userContact;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userImagePath = userImagePath;
		this.encryptPassword = encryptPassword;
	}



	public String getUserImagePath() {
		return userImagePath;
	}

	public void setUserImagePath(String userImagePath) {
		this.userImagePath = userImagePath;
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

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getEncryptPassword() {
		return encryptPassword;
	}

	public void setEncryptPassword(String encryptPassword) {
		this.encryptPassword = encryptPassword;
	}

}
