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
public class Disciplina {
    private int cod_disciplina;
    private String nome_disciplina;
    private int cod_curso;

    public Disciplina(int cod_disciplina, String nome_disciplina, int cod_curso) {
        this.cod_disciplina = cod_disciplina;
        this.nome_disciplina = nome_disciplina;
        this.cod_curso = cod_curso;
    }

    

    public int getCod_curso() {
        return cod_curso;
    }

    public void setCod_curso(int cod_curso) {
        this.cod_curso = cod_curso;
    }
    
    

    public int getCod_disciplina() {
        return cod_disciplina;
    }

    public void setCod_disciplina(int cod_disciplina) {
        this.cod_disciplina = cod_disciplina;
    }

    public String getNome_disciplina() {
        return nome_disciplina;
    }

    public void setNome_disciplina(String nome_disciplina) {
        this.nome_disciplina = nome_disciplina;
    }
    
    
}
