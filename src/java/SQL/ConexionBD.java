/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;


//esta es la funcion de conexion de la base de datos (video 11) 
public class ConexionBD {
    private static String url = "jdbc:mysql://127.0.0.1:3306/bd_unpiano"; //127.0.0.1=localhost
    private static String usuario = "root";// usuario que esta en la base de datos y heidy
    private static String contrasena = "tai1996mc";//contraseña del usuario 
    private static Connection conexion;
    private static PreparedStatement sentenciaPreparada;
    private static ResultSet resultado;
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url,usuario,contrasena);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Eerror" + e);//imprime si llega a existir algun tipo de error (e)
        }
        return conexion;
    }
    
    public static void main (String [] args){
        try {
            conexion = conectar();
            String consulta = "INSERT INTO usuarios (curp,nombre,apellidos,contrasena,usuario_generado_automaticamente) VALUES ('abc','Andres','Hernandez','123','abc@unpiano.com')";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            int i = sentenciaPreparada.executeUpdate();
            
            if(i>0){
                System.out.println("se guardaron los datos");
            }else{
                System.out.println("No se guardaron los datos");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("error: "+ e);
        }
    }
} 

