/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.dao.impl;

import java.util.List;
import mack.entity.Aluno;

/**
 *
 * @author AOKI
 */
public interface DAOFactory {
    public boolean create(Aluno aluno);
    public boolean delete(int cod);
    public Aluno read(int cod);
    public boolean update(int cod, Aluno aluno);
    public List<Aluno> getAllAlunos();
}
