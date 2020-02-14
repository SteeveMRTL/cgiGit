package model;

public class Article {
	private int id;
	private String nom;
	private int prix;
	
	//constructeurs
	public Article() {
		super();
	}
	public Article(int id, String nom, int prix) {
		super();
		this.id = id;
		this.nom = nom;
		this.prix = prix;
	}
	
	//accesseurs
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
}
