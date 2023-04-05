package userTASK;

public class Inquiry {
	
	private int ticketID;
	private String studentID;
	private String name;
	private String email;
	private String faculty;
	private int year;
	private String description;
	
	public Inquiry(int ticketID, String studentID, String name, String email, String faculty, int year,String description) {
		super();
		this.ticketID = ticketID;
		this.studentID = studentID;
		this.name = name;
		this.email = email;
		this.faculty = faculty;
		this.year = year;
		this.description = description;
	}

	public int getTicketID() {
		return ticketID;
	}

	public String getStudentID() {
		return studentID;
	}

	public String getDescription() {
		return description;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getFaculty() {
		return faculty;
	}

	public int getYear() {
		return year;
	}

}
