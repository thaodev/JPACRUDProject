package com.skilldistillery.hsptrack.data;

import java.util.List;

import com.skilldistillery.hsptrack.entities.Schedule;

public interface HspTrackerDAO {

	Schedule findById(int id);
	List<Schedule> findAll();
}
