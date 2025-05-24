package userManagement;

public class UserModel {
	private int id; // Added primary key field
	    public UserModel(int id, String fullName, String contactNumber, String email, String password) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.contactNumber = contactNumber;
		this.email = email;
		this.password = password;
	}
		private String fullName;
	    private String contactNumber;
	    private String email;
	    private String password;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFullName() {
			return fullName;
		}
		public void setFullName(String fullName) {
			this.fullName = fullName;
		}
		public String getContactNumber() {
			return contactNumber;
		}
		public void setContactNumber(String contactNumber) {
			this.contactNumber = contactNumber;
		}
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
}
