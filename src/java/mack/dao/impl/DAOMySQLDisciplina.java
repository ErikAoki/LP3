/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.dao.impl;

import mack.entity.Aluno;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author AOKI
 */
public class DAOMySQLDisciplina implements DAOFactory {
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
    public boolean create(Aluno aluno) {
        int cod_aluno = aluno.getCod_aluno();
        String nome_aluno = aluno.getNome_aluno();
        
        String query = "INSERT INTO Aluno VALUES (" + cod_aluno + ", '" + nome_aluno + "');";
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
        
        String query = "DELETE FROM Aluno WHERE (cod_aluno = " + cod + ");";
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
    public Aluno read(int cod) {
        String query = "SELECT * FROM Aluno WHERE (cod_aluno = " + cod + ");";
        boolean achou = false;
        Connection conn = null;
            try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs != null && rs.next()){
                Aluno a = new Aluno(rs.getInt("cod_aluno"), rs.getString("nome_aluno"));
            }
            Aluno a = new Aluno(rs.getInt("cod_aluno"), rs.getString("nome_aluno"));
            conn.close();
            return a;
        } catch (Exception ex) {
            ex.printStackTrace();
            String erro = "Não foi encontrado aluno com esse código.";
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
    public boolean update(int cod, Aluno aluno) {
        int cod_aluno = aluno.getCod_aluno();
        String nome_aluno = aluno.getNome_aluno();
        System.out.println(cod_aluno + nome_aluno);
        String query = "UPDATE Aluno SET cod_aluno = " + cod_aluno + ", nome_aluno = '" + nome_aluno + "' WHERE (cod_aluno = " + cod + ");";
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
    public List<Aluno> getAllAlunos() {
        String query = "SELECT * FROM Aluno;";
        
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            List<Aluno> result = new ArrayList();
            
            while(rs.next()) {
                Aluno a = new Aluno(rs.getInt("cod_aluno"), rs.getString("nome_aluno"));
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
