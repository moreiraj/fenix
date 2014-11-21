package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClienteDao {

    private Connection con;
    private Statement st;
    private ResultSet rs;

    public int conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fenix", "root", "");
            st = con.createStatement();
            return 1;
        } catch (ClassNotFoundException ex) {
            return 0;
        } catch (SQLException ex) {
            return 2;
        }
    }

    public int salvar(Cliente cli) {
        try {
            String sql = "insert into cliente values ('" + cli.getNome() + "', '" + cli.getCpf() + "', '" + cli.getEmail() + "', '" + cli.getSenha() + "',  '" + cli.getTelefone() + "' , '" + cli.getEndereco() + "', '" + cli.getCidade() + "', '" + cli.getBairro() + "')";
            st.executeUpdate(sql);
            return 1;
        } catch (SQLException ex) {
            int c = ex.getErrorCode();
            if (c == 1062) {
                return 3;
            } else {
                return 0;
            }
        }

    }

    public ArrayList consultar(String cpf) {
        ArrayList<Cliente> listaCliente = new ArrayList<Cliente>();
        String sql = "select * from cliente where cpf like '%" + cpf + "%'";
        try {
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setNome(rs.getString("nome"));
                cli.setCpf(rs.getString("cpf"));
                cli.setEmail(rs.getString("email"));                
                cli.setSenha(rs.getString("senha"));
                cli.setTelefone(rs.getString("telefone"));
                cli.setEndereco(rs.getString("endereco"));
                cli.setCidade(rs.getString("cidade"));
                cli.setBairro(rs.getString("bairro"));
                listaCliente.add(cli);
            }
            return listaCliente;
        } catch (SQLException ex) {
            return null;
        }
    }

    public int excluir(String cpf) {
        try {
            String sql = "delete from cliente where cpf=" + cpf;
            st.executeUpdate(sql);
            return 1;
        } catch (SQLException ex) {
            return 0;
        }
    }

    public int desconectar() {
        try {
            con.close();
            return 1;
        } catch (SQLException ex) {
            return 0;
        }
    }

}
