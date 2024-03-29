package deriva.app;

import deriva.db.DAOFactory;
import deriva.db.userDAO;
import deriva.neg.Usuario;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EditarPerfil extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        loadCampos(request);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/editarPerfil.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            processRequest(request, response);
    }   

    public void loadCampos(HttpServletRequest request) {
         HttpSession session = request.getSession();

        if (session != null) {
            Usuario usuario = (Usuario) session.getAttribute("usuario");
            if (usuario.getEmail() != null && !usuario.getEmail().isEmpty()) {
                try {                    
                    if (usuario != null) {
                        request.setAttribute("usuario", usuario);                       
                    }
                } catch (Exception ex) {
                    Logger.getLogger(Cadastra.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }


}
