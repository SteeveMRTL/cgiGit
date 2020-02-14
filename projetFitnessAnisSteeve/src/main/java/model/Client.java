package model;

public class Client {
	private int idClient;
	private String mdp;
	private String nom;
	private String prenom;
	private String email;

	// constructeurs
	public Client() {
		super();
	}

	public Client(int idClient, String mdp, String nom, String prenom, String email) {
		super();
		this.idClient = idClient;
		this.mdp = mdp;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
	}

	// accesseurs
	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
