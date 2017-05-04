package POJO;

public class UserDetails {

	private String emailId;
	private String userName;
	private String password;
	
	public UserDetails(String emailId, String userName, String password) {
		super();
		this.emailId = emailId;
		this.userName = userName;
		this.password = password;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserDetails() {
		super();
	}

	@Override
	public String toString() {
		return "UserDetails [emailId=" + emailId + ", userName=" + userName + ", password=" + password + "]";
	}
	
	
	
}
