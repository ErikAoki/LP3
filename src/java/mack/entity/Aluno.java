/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.entity;

/**
 *
 * @author AOKI
 */
public class Aluno {
    private int cod_aluno;
    private String nome_aluno;

    public Aluno(int cod_aluno, String nome_aluno) {
        this.cod_aluno = cod_aluno;
        this.nome_aluno = nome_aluno;
    }

    
    
    public int getCod_aluno() {
        return cod_aluno;
    }

    public void setCod_aluno(int cod_aluno) {
        this.cod_aluno = cod_aluno;
    }

    public String getNome_aluno() {
        return nome_aluno;
    }

    public void setNome_aluno(String nome_aluno) {
        this.nome_aluno = nome_aluno;
    }
    
    
}
