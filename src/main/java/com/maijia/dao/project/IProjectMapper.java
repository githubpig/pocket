package com.maijia.dao.project;

import java.util.List;

import com.maijia.model.Params;
import com.maijia.model.Project;



public interface IProjectMapper {
	public List<Project> query();
	public List<Project> queryPage(Params param);
	public int save(Project project);
	public int count(Params param);
	public int delete(int [] arr);
	public int del(int id);
	public Project queryId(int id);
	public int update(Project project);
	public List<Project> queryCondition(Project project);
}
