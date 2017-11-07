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
import mack.entity.AlunoDisc;

/**
 *
 * @author AOKI
 */
public class DAOMySQLAlunoDisc implements DAOFactory<AlunoDisc> {
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
    public boolean create(AlunoDisc alunodisc) {
        int cod_aluno = alunodisc.getCod_aluno();
        int cod_disciplina = alunodisc.getCod_disciplina();
        int nota = alunodisc.getNota();
        String query = "INSERT INTO Aluno_Disc VALUES (" + cod_aluno + ", " + cod_disciplina + "," + nota + ");";
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
        
        String query = "DELETE FROM Aluno_Disc WHERE (cod_aluno = " + cod + ");";
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
    public AlunoDisc read(int cod) {
        String query = "SELECT * FROM Aluno_Disc WHERE (cod_aluno = " + cod + ");";
        boolean achou = false;
        Connection conn = null;
            try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs != null && rs.next()){
                AlunoDisc a = new AlunoDisc(rs.getInt("cod_aluno"), rs.getInt("cod_disciplina"), rs.getInt("nota"));
            }
            AlunoDisc a = new AlunoDisc(rs.getInt("cod_aluno"), rs.getInt("cod_disciplina"), rs.getInt("nota"));
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
    public boolean update(int cod, AlunoDisc alunodisc) {
        int cod_aluno = alunodisc.getCod_aluno();
        int cod_disciplina = alunodisc.getCod_disciplina();
        int nota = alunodisc.getNota();
        String query = "UPDATE Aluno_Disc SET cod_aluno = " + 
                cod_aluno + ", cod_disciplina = " + cod_disciplina 
                + ", nota = " + nota + " WHERE cod_aluno = " 
                + cod + ";";
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
    public List<AlunoDisc> getAll() {
        String query = "SELECT * FROM Aluno_Disc;";
        
        Connection conn = null;
        try {
            conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            List<AlunoDisc> result = new ArrayList();
            
            while(rs.next()) {
                AlunoDisc a = new AlunoDisc(rs.getInt("cod_aluno"), rs.getInt("cod_disciplina"), rs.getInt("nota"));
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
