package model;

public class Commande {
private int idClient;
private String date;
private int total;
private String info;

//constructeur
public Commande() {
	super();
}
public Commande(int idClient, String date, int total, String info) {
	super();
	this.idClient = idClient;
	this.date = date;
	this.total = total;
	this.info = info;
}

//accesseurs
public int getIdClient() {
	return idClient;
}
public void setIdClient(int idClient) {
	this.idClient = idClient;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getTotal() {
	return total;
}
public void setTotal(int total) {
	this.total = total;
}
public String getInfo() {
	return info;
}
public void setInfo(String info) {
	this.info = info;
}
}
