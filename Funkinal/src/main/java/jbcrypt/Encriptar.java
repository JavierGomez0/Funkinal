/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package jbcrypt;

import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author informatica
 */
public class Encriptar {
    
    public static String encriptar(String contraseña){
        return BCrypt.hashpw(contraseña, BCrypt.gensalt());
    }
    
    public static Boolean verificarContraseña(String contraseñaAVerificar, String hash){
        return BCrypt.checkpw(contraseñaAVerificar, hash);
    }
}