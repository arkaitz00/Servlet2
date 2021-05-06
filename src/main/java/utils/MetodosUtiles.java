package main.java.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.google.gson.Gson;

import main.java.model.entities.Municipio;
import main.java.model.entities.Provincia;

public class MetodosUtiles {

	private static Logger logger = LogManager.getLogger(MetodosUtiles.class);

	public static String nombreRol(int idRol) {
		String nombreRol = "";
		switch (idRol) {
		case 1:
			nombreRol = "Admin";
			break;
		case 2:
			nombreRol = "Empleado";
			break;
		case 3:
			nombreRol = "Cliente";
			break;
		case 4:
			nombreRol = "Gerente";
			break;
		}
		return nombreRol;
	}

	public static String mes(int numeroMes) {
		String mes = "";
		switch (numeroMes) {
		case 1:
			mes = "Enero";
			break;
		case 2:
			mes = "Febrero";
			break;
		case 3:
			mes = "Marzo";
			break;
		case 4:
			mes = "Abril";
			break;
		case 5:
			mes = "Mayo";
			break;
		case 6:
			mes = "Junio";
			break;
		case 7:
			mes = "julio";
			break;
		case 8:
			mes = "Agosto";
			break;
		case 9:
			mes = "Septiembre";
			break;
		case 10:
			mes = "Octubre";
			break;
		case 11:
			mes = "Noviembre";
			break;
		case 12:
			mes = "Diciembre";
			break;
		}
		return mes;
	}

	public static String leerFichero(String ficheroUrl) {
		String output = "";
		try {
			URL url = new URL(ficheroUrl);

			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			if (conn.getResponseCode() != 200) {
				
				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));

			StringBuilder sb = new StringBuilder();
			int cp;
			while ((cp = br.read()) != -1) {
				sb.append((char) cp);
			}

			output = sb.toString();

			conn.disconnect();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return output;
	}

	public static Provincia[] leerProvincias() {
		String cadenaJson = leerFichero(
				"https://raw.githubusercontent.com/IagoLast/pselect/master/data/provincias.json");
		Provincia[] provincias = new Gson().fromJson(cadenaJson, Provincia[].class);
		Arrays.sort(provincias);
		return provincias;
	}

	public static Municipio[] leerMunicipios() {
		String cadenaJson = leerFichero("https://raw.githubusercontent.com/IagoLast/pselect/master/data/municipios.json");
		Municipio[] municipios = new Gson().fromJson(cadenaJson, Municipio[].class);
		Arrays.sort(municipios);
		return municipios;
	}
}
