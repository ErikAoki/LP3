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
public class Coordenador {
    private int cod_coordenador;
    private String nome_coordenador;
    private int cod_curso;

    public Coordenador(int cod_coordenador, String nome_coordenador, int cod_curso) {
        this.cod_coordenador = cod_coordenador;
        this.nome_coordenador = nome_coordenador;
        this.cod_curso = cod_curso;
    }
    
    public int getCod_coordenador() {
        return cod_coordenador;
    }

    public void setCod_coord(int cod_coord) {
        this.cod_coordenador = cod_coordenador;
    }

    public String getNome_coordenador() {
        return nome_coordenador;
    }

    public void setNome_coordenador(String nome_coordenador) {
        this.nome_coordenador = nome_coordenador;
    }

    public int getCod_curso() {
        return cod_curso;
    }

    public void setCod_curso(int cod_curso) {
        this.cod_curso = cod_curso;
    }
    
    
    
}
