package web;

import dao.validacionDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jbcrypt.Encriptar;
import model.Usuarios;

@WebServlet(name = "ServletRegistrar",urlPatterns = {"/ServletRegistrar"})
public class ServletUsuario extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest solicitud, HttpServletResponse respuesta) throws ServletException, IOException{

        Encriptar e = new Encriptar();
        Usuarios u = new Usuarios();

        String contrasenaPlana = solicitud.getParameter("contrasena");
        
        if (contrasenaPlana == null || contrasenaPlana.trim().isEmpty()) {
            solicitud.setAttribute("mensajeError", "La contraseña no puede estar vacía.");
            solicitud.getRequestDispatcher("registro.jsp").forward(solicitud, respuesta);
            return;
        }
        
        u.setContrasena(e.encriptar(contrasenaPlana));
        
        u.setNombre(solicitud.getParameter("nombre"));
        u.setApellido(solicitud.getParameter("apellido"));
        u.setCorreo(solicitud.getParameter("correo"));
        u.setTelefono(solicitud.getParameter("telefono"));

        validacionDao vdao = new validacionDao();
        vdao.agregar(u);

        System.out.println("Usuario agregado exitosamente: " + u.getCorreo());

        solicitud.getRequestDispatcher("inicio.jsp").forward(solicitud, respuesta);

    }
}