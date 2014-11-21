package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PlanoDao {

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

    public int salvar(Plano plan) {
        try {
            String sql = "insert into plano values (" + plan.getId() + ", '" + plan.getDescricao() + "',  " + plan.getPreco() + ")";
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

    public ArrayList consultar(String id) {
        ArrayList<Plano> listaPlano = new ArrayList<Plano>();
        String sql = "select * from plano where id like '%" + id + "%'";
        try {
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Plano plan = new Plano();
                plan.setId(rs.getInt("id"));
                plan.setDescricao(rs.getString("descricao"));
                plan.setPreco(rs.getDouble("preço"));
                listaPlano.add(plan);
            }
            return listaPlano;
        } catch (SQLException ex) {
            return null;
        }
    }

    public int excluir(String id) {
        try {
            String sql = "delete from plano where id=" + id;
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
