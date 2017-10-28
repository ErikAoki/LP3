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
    private int cod_coord;
    private String nome_coord;
    private int cod_curso;

    public Coordenador(int cod_coord, String nome_coord, int cod_curso) {
        this.cod_coord = cod_coord;
        this.nome_coord = nome_coord;
        this.cod_curso = cod_curso;
    }
    
    public int getCod_coord() {
        return cod_coord;
    }

    public void setCod_coord(int cod_coord) {
        this.cod_coord = cod_coord;
    }

    public String getNome_coord() {
        return nome_coord;
    }

    public void setNome_coord(String nome_coord) {
        this.nome_coord = nome_coord;
    }

    public int getCod_curso() {
        return cod_curso;
    }

    public void setCod_curso(int cod_curso) {
        this.cod_curso = cod_curso;
    }
    
    
    
}
