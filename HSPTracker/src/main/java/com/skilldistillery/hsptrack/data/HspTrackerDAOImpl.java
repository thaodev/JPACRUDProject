package com.skilldistillery.hsptrack.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.hsptrack.entities.Schedule;


@Service
@Transactional
public class HspTrackerDAOImpl implements HspTrackerDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Schedule findById(int id) {
		Schedule sch = em.find(Schedule.class, id);
		return sch;
	}

	@Override
	public List<Schedule> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
