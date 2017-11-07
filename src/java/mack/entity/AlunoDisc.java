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
public class AlunoDisc {
    private int cod_aluno;
    private int cod_disciplina;
    private int nota;

    public AlunoDisc(int cod_aluno, int cod_disciplina, int nota) {
        this.cod_aluno = cod_aluno;
        this.cod_disciplina = cod_disciplina;
        this.nota = nota;
    }

    public int getCod_aluno() {
        return cod_aluno;
    }

    public void setCod_aluno(int cod_aluno) {
        this.cod_aluno = cod_aluno;
    }

    public int getCod_disciplina() {
        return cod_disciplina;
    }

    public void setCod_disciplina(int cod_disciplina) {
        this.cod_disciplina = cod_disciplina;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
    
    
}
