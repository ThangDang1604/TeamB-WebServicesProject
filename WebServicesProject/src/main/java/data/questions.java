package data;

public class questions {
	private int questionId;
	private String question;
	
	public questions() {
	}
	public questions(int questionId, String question) {
		this.questionId = questionId;
		this.question = question;
	}
	public int getquestionId() {
		return questionId;
	}
	public void setquestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getquestion() {
		return question;
	}
	public void setquestion(String question) {
		this.question = question;
	}
	@Override
	public String toString() {
		return "question [questionId=" + questionId + ", question=" +question+ "]";
	}
}

