/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mack.entity.Coordenador;

/**
 *
 * @author AOKI
 */
public class DAOMySQLCoordenador implements DAOFactory<Coordenador> {
    private final String url = "jdbc:mysql://localhost:3306/meubd";
    private final String user = "root";
    private final String password = "140194";
    
    private Connection getConnection() throws ClassNotFoundException, 
            InstantiationException, 
            IllegalAccessException,
            SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        return DriverManager.getConnection(url, user, password);
    }
    
    @Override
    public boolean create(Coordenador coordenador) {
        int cod_coordenador = coordenador.getCod_coordenador();
        String nome_coordenador = coordenador.getNome_coordenador();
        int cod_curso = coordenador.getCod_curso();
        String query = "INSERT INTO Coordenador VALUES (" + cod_coordenador + ", '" + nome_coordenador + "'," + cod_curso + ");";
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            boolean result = stmt.executeUpdate(query) > 0;
            conn.close();
            return result;
        } catch (Exception ex) {
            ex.printStackTrace();
            
            return false;
        } finally {
            if(conn != null)
                try {
                    conn.close();
            } catch (SQLException ex) {
                    Logger.getLogger(DAOMySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
    }

    @Override
    public boolean delete(int cod) {
        
        String query = "DELETE FROM Coordenador WHERE (cod_coordenador = " + cod + ");";
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            boolean result = stmt.executeUpdate(query) > 0;
            conn.close();
            return result;
        } catch (Exception ex) {
            ex.printStackTrace();
            
            return false;
        } finally {
            if(conn != null)
                try {
                    conn.close();
            } catch (SQLException ex) {
                    Logger.getLogger(DAOMySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
    };

    @Override
    public Coordenador read(int cod) {
        String query = "SELECT * FROM Coordenador WHERE (cod_coordenador = " + cod + ");";
        boolean achou = false;
        Connection conn = null;
            try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs != null && rs.next()){
                Coordenador a = new Coordenador(rs.getInt("cod_coordenador"), rs.getString("nome_coordenador"), rs.getInt("cod_curso"));
            }
            Coordenador a = new Coordenador(rs.getInt("cod_coordenador"), rs.getString("nome_coordenador"), rs.getInt("cod_curso"));
            conn.close();
            return a;
        } catch (Exception ex) {
            ex.printStackTrace();
            String erro = "Não foi encontrado coordenadorenador com esse código.";
            System.out.println(erro);
        } finally {
            if(conn != null)
                try {
                    conn.close();
            } catch (SQLException ex) {
                    Logger.getLogger(DAOMySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
        };
        return null;
    };

    @Override
    public boolean update(int cod, Coordenador coordenador) {
        int cod_coordenador = coordenador.getCod_coordenador();
        String nome_coordenador = coordenador.getNome_coordenador();
        int cod_curso = coordenador.getCod_curso();
        System.out.println(cod_coordenador + nome_coordenador);
        String query = "UPDATE Coordenador SET cod_coordenador = " + cod_coordenador + ", nome_coordenador = '" + nome_coordenador + "', cod_curso = " + cod_curso + " (cod_coordenador = " + cod + ");";
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            boolean result = stmt.executeUpdate(query) > 0;
            conn.close();
            return result;
        } catch (Exception ex) {
            ex.printStackTrace();
            
            return false;
        } finally {
            if(conn != null)
                try {
                    conn.close();
            } catch (SQLException ex) {
                    Logger.getLogger(DAOMySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
    }

    @Override
    public List<Coordenador> getAll() {
        String query = "SELECT * FROM Coordenador;";
        
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            List<Coordenador> result = new ArrayList();
            
            while(rs.next()) {
                Coordenador a = new Coordenador(rs.getInt("cod_coordenador"), rs.getString("nome_coordenador"), rs.getInt("cod_curso"));
                result.add(a);
            }
            conn.close();
            return result;
        } catch (Exception ex) {
            ex.printStackTrace();
            
            return null;
        } finally {
            if(conn != null)
                try {
                    conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DAOMySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    };
    
    
    
}
