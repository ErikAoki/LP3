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
import mack.entity.Disciplina;

/**
 *
 * @author AOKI
 */
public class DAOMySQLDisciplina implements DAOFactory<Disciplina> {
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
    public boolean create(Disciplina disciplina) {
        int cod_disciplina = disciplina.getCod_disciplina();
        String nome_disciplina = disciplina.getNome_disciplina();
        int cod_curso = disciplina.getCod_curso();
        String query = "INSERT INTO Disciplina VALUES (" + cod_disciplina + ", " + cod_curso + ", '" + nome_disciplina + "');";
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
        
        String query = "DELETE FROM Disciplina WHERE (cod_disciplina = " + cod + ");";
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
    public Disciplina read(int cod) {
        String query = "SELECT * FROM Disciplina WHERE (cod_disciplina = " + cod + ");";
        boolean achou = false;
        Connection conn = null;
            try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs != null && rs.next()){
                Disciplina a = new Disciplina(rs.getInt("cod_disciplina"), rs.getInt("cod_curso"), rs.getString("nome_disciplina"));
            }
            Disciplina a = new Disciplina(rs.getInt("cod_disciplina"), rs.getInt("cod_curso"), rs.getString("nome_disciplina"));
            conn.close();
            return a;
        } catch (Exception ex) {
            ex.printStackTrace();
            String erro = "Não foi encontrado disciplina com esse código.";
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
    public boolean update(int cod, Disciplina disciplina) {
        int cod_disciplina = disciplina.getCod_disciplina();
        String nome_disciplina = disciplina.getNome_disciplina();
        int cod_curso = disciplina.getCod_curso();
        System.out.println(cod_disciplina + nome_disciplina);
        String query = "UPDATE Disciplina SET cod_disciplina = " + cod_disciplina + ", cod_curso = " + cod_curso + ", nome_disciplina = '" + nome_disciplina + "' WHERE (cod_disciplina = " + cod + ");";
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
    public List<Disciplina> getAll() {
        String query = "SELECT * FROM Disciplina;";
        
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            List<Disciplina> result = new ArrayList();
            
            while(rs.next()) {
                Disciplina a = new Disciplina(rs.getInt("cod_disciplina"), rs.getInt("cod_curso"), rs.getString("nome_disciplina"));
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
