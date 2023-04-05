package userTASK;

public class student {

	private int id;
	private String name;
	private String email;
	private String phone;
	private String userName;
	private String password;
	private String gender;
	private String faculty;
	private int year;
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public student(int id, String name, String email, String phone, String userName, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
		
		
		
	}
	
	//to pass information to registration servlet
	public student(String name, String email, String password, String gender, String faculty, int year) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.faculty = faculty;
		this.year = year;
	}

	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}

	

	public String getEmail() {
		return email;
	}

	

	public String getPhone() {
		return phone;
	}


	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}

	
	
}
