package model;

public class Ligne {
	private Article article;
	private int quantite;
	private int sousTotal;

	// constructeur
	public Ligne() {
		super();
	}

	public Ligne(Article article, int quantite) {
		super();
		this.article = article;
		this.quantite = quantite;
		this.sousTotal = this.article.getPrix() * this.quantite;
	}

	// accesseurs
	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
		this.setSousTotal();
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
		this.setSousTotal();
	}

	public int getSousTotal() {
		return this.sousTotal;
	}

	private void setSousTotal() {
		this.sousTotal = this.article.getPrix() * this.quantite;
	}

	@Override
	public String toString() {
		return "Ligne [article=" + article + ", quantite=" + quantite + ", sousTotal=" + sousTotal + "]";
	}
}
