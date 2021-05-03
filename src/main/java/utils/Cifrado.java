package main.java.utils;

import org.jasypt.util.password.BasicPasswordEncryptor;
import org.jasypt.util.password.PasswordEncryptor;

public class Cifrado {
	static PasswordEncryptor encriptado = new BasicPasswordEncryptor();
	
	public static String cifrar(String descifrado) {
		String cifrar = "";
		
		cifrar = encriptado.encryptPassword(descifrado);
		
		return cifrar;
	}
	
	public static boolean comprobarCifrado(String descrifrado, String cifrado) {
		if(encriptado.checkPassword(descrifrado, cifrado)) {
			return true;
		}
		
		return false;
	}
}
