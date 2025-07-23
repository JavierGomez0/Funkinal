/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import model.Usuarios;

/**
 *
 * @author informatica
 */
public class validacionDao {
    
    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("funkinalPU");
    
    public void agregar(Usuarios usuario){
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaccion = em.getTransaction();
        
        try {
            transaccion.begin();
            em.persist(usuario);
            transaccion.commit();
        } catch (Exception e) {
            if (transaccion.isActive())
                transaccion.rollback();
        }finally {
            em.close();
        }
    }
}
