package deriva.neg;

import deriva.db.DAOFactory;
import deriva.db.userDAO;
import javax.servlet.http.Cookie;

/** Maneja autorização de acesso.
 *
 */
public class Autorizacao {

    private userDAO dao = DAOFactory.getUserDAO();
    private boolean Logado = false;
    private boolean ExisteUsuarioAutorizado = false;
    private Usuario usuario;

    public Autorizacao(Usuario usuario){
        if (usuario != null) this.usuario = usuario;
        try {
            Logado = dao.validaLogin(usuario);
        } catch (Exception ex) {}
    }

    public boolean IsLogado (){
        return Logado;
    }

    public void LogOut(){
        usuario = null;
        ExisteUsuarioAutorizado = false;
        Logado = false;
    }

  public boolean PossuiAutorizacao(Cookie email, Cookie senha){
      if (Logado){
         if (email.getValue().equals(usuario.getEmail())
                 && senha.getValue().equals(usuario.getSenha())){
             ExisteUsuarioAutorizado = true;
          }
      }
      return ExisteUsuarioAutorizado;
  }




}

