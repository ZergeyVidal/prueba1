package clases;
import com.mysql.jdbc.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class conexion {
    private static Connection cnx=null;
public static Connection obtener() throws ClassNotFoundException, SQLException{
    if (cnx==null) {
        try{
    Class.forName("com.mysql.jdbc.Driver"); 
    cnx=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bibioteca", "root", "root");
    }catch(SQLException ex){
       throw new SQLException(ex);
    }catch(ClassNotFoundException ex){
    throw new ClassCastException(ex.getMessage());   
    }}
    return cnx;
    }
    public static void cerrar() throws SQLException{
    if (cnx!=null){
        cnx.close();
    }}
    public void nuevoTipoUsuario(String tipo_u, String descripcion) throws ClassNotFoundException, SQLException{
    String query="INSERT INTO tipo_usuario(tipo_u, descripcion) values('"+tipo_u+"','"+descripcion+"')";
    Statement st= obtener().createStatement();
    st.executeUpdate(query); //agregar los throws y java.statement
    cerrar(); // cierra la conexion
    cnx=null; //limpia la conexion
    }
    public ArrayList<tipoUsuario> verTipoUsuario() throws ClassNotFoundException, SQLException{
    ArrayList<tipoUsuario> tipos=new ArrayList<>();
    String query="SELECT * FROM tipo_usuario";    
    Statement st= obtener().createStatement();
    ResultSet rs=st.executeQuery(query);
    while(rs.next()){
        tipoUsuario t = new tipoUsuario();
        t.setId(rs.getString("idTipo_usuario"));
        t.setTipo(rs.getString("tipo_u"));
        t.setDescripcion(rs.getString("descripcion"));
        tipos.add(t);
    }
    cerrar();
    cnx=null;
    return tipos;
}
public void editarTipoUsuario(String id, String tipo, String descripcion) throws ClassNotFoundException, SQLException{
    String query="UPDATE tipo_usuario SET tipo_u='"+tipo+"' , descripcion='"+descripcion+"' where idTipo_usuario="+id+"";
    Statement st= obtener().createStatement();
    st.executeUpdate(query); //agregar los throws y java.statement
    cerrar(); // cierra la conexion
    cnx=null; //limpia la conexion
    }
   public ArrayList<tipoUsuario> verTipoUsuarioById(String id) throws ClassNotFoundException, SQLException{
    ArrayList<tipoUsuario> tipos=new ArrayList<>();
    String query="SELECT * FROM tipo_usuario WHERE idTipo_usuario="+id+"";    
    Statement st= obtener().createStatement();
    ResultSet rs=st.executeQuery(query);
    while(rs.next()){
        tipoUsuario t = new tipoUsuario();
        t.setId(rs.getString("idTipo_usuario"));
        t.setTipo(rs.getString("tipo_u"));
        t.setDescripcion(rs.getString("descripcion"));
        tipos.add(t);
    }
    cerrar();
    cnx=null;
    return tipos;
}}