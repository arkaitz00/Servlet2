package main.java.model.entities;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Provincia implements Comparable<Provincia> {
	@SerializedName("id")
	@Expose
	int id;

	@SerializedName("nm")
	@Expose
	String nombre;

	public Provincia() {

	}

	public Provincia(int id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int compareTo(Provincia o) {
		if (o.getId() > getId()) {
			return -1;
		} else if (getId() > o.getId()) {
			return 1;
		} else {
			return 0;
		}
	}

}
