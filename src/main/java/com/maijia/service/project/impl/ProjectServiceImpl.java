package com.maijia.service.project.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maijia.dao.Params;
import com.maijia.dao.project.IProjectMapper;
import com.maijia.model.Project;
import com.maijia.service.project.IProjectService;


@Service
public class ProjectServiceImpl implements IProjectService{

	@Autowired
	private IProjectMapper projectMapper;
	
	@Override
	public List<Project> queryProjects() {
		// TODO Auto-generated method stub
		return projectMapper.query();
	}

	@Override
	public List<Project> queryPageProjects(Params param) {
		// TODO Auto-generated method stub
		return projectMapper.queryPage(param);
	}

	@Override
	public int save(Project project) {
		
		return projectMapper.save(project);
	}

	@Override
	public int delete(int[] arr) {
		return projectMapper.delete(arr);
	}

	@Override
	public int del(int id) {
		return projectMapper.del(id);
	}

	@Override
	public Project queryId(int id) {
		return projectMapper.queryId(id);
	}

	@Override
	public int update(Project project) {
		return projectMapper.update(project);
	}

	@Override
	public List<Project> queryCondition(Project project) {
		return projectMapper.queryCondition(project);
	}

	@Override
	public int count(Params param) {
		// TODO Auto-generated method stub
		return projectMapper.count(param);
	}

}
