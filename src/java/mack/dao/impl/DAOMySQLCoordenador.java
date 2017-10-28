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
    private final String url = "jdbc:mysql://localhost:3306/mysql";
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
    public boolean create(Coordenador coord) {
        int cod_coord = coord.getCod_coord();
        String nome_coord = coord.getNome_coord();
        int cod_curso = coord.getCod_curso();
        String query = "INSERT INTO Coordenador VALUES (" + cod_coord + ", '" + nome_coord + "'," + cod_curso + ");";
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
        
        String query = "DELETE FROM Coordenador WHERE (cod_coord = " + cod + ");";
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
        String query = "SELECT * FROM Coordenador WHERE (cod_coord = " + cod + ");";
        boolean achou = false;
        Connection conn = null;
            try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs != null && rs.next()){
                Coordenador a = new Coordenador(rs.getInt("cod_coord"), rs.getString("nome_coord"), rs.getInt("cod_curso"));
            }
            Coordenador a = new Coordenador(rs.getInt("cod_coord"), rs.getString("nome_coord"), rs.getInt("cod_curso"));
            conn.close();
            return a;
        } catch (Exception ex) {
            ex.printStackTrace();
            String erro = "Não foi encontrado coordenador com esse código.";
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
    public boolean update(int cod, Coordenador coord) {
        int cod_coord = coord.getCod_coord();
        String nome_coord = coord.getNome_coord();
        int cod_curso = coord.getCod_curso();
        System.out.println(cod_coord + nome_coord);
        String query = "UPDATE Coordenador SET cod_coord = " + cod_coord + ", nome_coord = '" + nome_coord + "', cod_curso = " + cod_curso + " (cod_coord = " + cod + ");";
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
                Coordenador a = new Coordenador(rs.getInt("cod_coord"), rs.getString("nome_coord"), rs.getInt("cod_curso"));
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
