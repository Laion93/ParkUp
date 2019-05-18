/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import beans.Usuario;
import beans.Vehiculo;
import dao.PlazaDao;
import dao.UsuarioDao;
import dao.VehiculoDao;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Manchita
 */
public class Prueba_gestion {
    
    public static void main(String[] args) throws SQLException{
        

       Usuario u1 = new Usuario();

        u1.setNombre("Andreu");
        u1.setApellido("Buenafuente");
        u1.setDNI("07963412F");
        u1.setTelefono(689523147);
        u1.setEmail("jfjksfd@gmail.com");
        u1.setPass("miPassword");

    

      
//        UsuarioDao miUsuarioDao = new UsuarioDao();
//        miUsuarioDao.registrarUsuario(u1);
       
        
    
    
        Vehiculo v1 = new Vehiculo();
        
        v1.setMatricula("3777CFD");
        v1.setTipoVehiculo("coche");
        v1.setElectrico(false);
        v1.setUsuario(u1);
    
        /*
        Vehiculo v2 = new Vehiculo();
        
        v2.setMatricula("3454HJK");
        v2.setTipoVehiculo("furgoneta");
        v2.setElectrico(false);
        v2.setUsuario(u1);
 
  */
        //VehiculoDao miVehiculoDao = new VehiculoDao();
        //miVehiculoDao.guardarVehiculo(v1);
       // miVehiculoDao.guardarVehiculo(v2);
        
        /*
        Vehiculo v3 = miVehiculoDao.recuperarVehiculo("3777CFD");
        System.out.println(v3.getMatricula());
        System.out.println(v3.getTipovehiculo());
        System.out.println(v3.isElectrico());
        System.out.println(v1.getUsuario().getDNI());
        */
        //System.out.println(miUsuarioDao.recuperarUsuario("07963412F"));
        //System.out.println(miUsuarioDao.eliminarUsuario("07963412F"));
        
        //System.out.println(miVehiculoDao.recuperarVehiculosDeUsuario(u1));
        //miVehiculoDao.modificarVehiculo(v1);
        //miVehiculoDao.eliminarVehiculo("3777CFD");
        
        //miVehiculoDao.eliminarVehiculosDeUsuario(u1);
      
        PlazaDao miPlaza = new PlazaDao();
        //miPlaza.ocuparPlaza(1,v1);
        miPlaza.liberarPlaza("A1");
/*
      PlazaDao misPlazas = new PlazaDao();
      System.out.println(misPlazas.recuperarPlazas());
     */
//      GestionVehiculos gestionVehiculos = new GestionVehiculos();
//      System.out.println(gestionVehiculos.recuperarVehiculosDeUsuario(u1));
//      
//      ArrayList<Vehiculo> vehiculos = gestionVehiculos.recuperarVehiculosDeUsuario(u1);
//      System.out.println(vehiculos);
    }
}
