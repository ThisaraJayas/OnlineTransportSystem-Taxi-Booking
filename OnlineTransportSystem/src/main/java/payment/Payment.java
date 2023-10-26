package payment;

public class Payment {
	private int id;
	private String method;
	private String name;
	private String cardno;
	private String exp;
	private int cvc;
	
	public Payment (int id, String method, String name, String cardno, String exp, int cvc) {
		super();
		this.id = id;
		this.method = method;
		this.name = name;
		this.cardno = cardno;
		this.exp = exp;
		this.cvc = cvc;
	}

	public int getId() {
		return id;
	}

	public String getMethod () {
		return method;
	}

	public String getName () {
		return name;
	}

	public String getCardno() {
		return cardno;
	}

	public String getExp() {
		return exp;
	}

	public int getCvc() {
		return cvc;
	}
}
