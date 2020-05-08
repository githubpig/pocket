package com.maijia.service.project;

import java.util.List;

import com.maijia.model.Params;
import com.maijia.model.Project;



public interface IProjectService {

	public List<Project> queryProjects();
	
	public List<Project> queryPageProjects(Params param);
	
	public int save(Project project);
	
	public int count(Params param);
	
	public int delete(int [] arr);
	
	public int del(int id);
	
	public Project queryId(int id);
	
	public int update(Project project);
	
	public List<Project> queryCondition(Project project);
	
}
