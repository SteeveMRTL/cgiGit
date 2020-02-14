package model;

import java.util.ArrayList;

public class Panier {
	private int idClient;
	private ArrayList<Ligne> lignes;
	private int prixTotal;

	// constructeur
	public Panier() {
		super();
		this.lignes = new ArrayList<Ligne>();
	}

	// methodes
	private void setPrixTotal() {
		int res = 0;
		for (Ligne l : this.lignes)
			res += l.getSousTotal();
		this.prixTotal = res;
	}

	public void addLigne(Ligne l) {
		this.lignes.add(l);
		this.setPrixTotal();
	}

	public String writeInfo() {
		String res = "";
		for (Ligne l : lignes)
			res += l.getArticle().getId() + "/" + l.getQuantite() + ";";
		return res;
	}

	// accesseurs
	public ArrayList<Ligne> getLignes() {
		return lignes;
	}

	public int getPrixTotal() {
		return prixTotal;
	}

	@Override
	public String toString() {
		return "Panier [lignes=" + lignes + ", prixTotal=" + prixTotal + "]";
	}

}
