package com.skilldistillery.hsptrack.data;

import java.util.List;

import com.skilldistillery.hsptrack.entities.Schedule;

public interface HspTrackerDAO {

	Schedule findById(int id);
	List<Schedule> findAll();
	Schedule addNewSchedule(Schedule schedule);
	boolean updateSchedule(Schedule schedule);
	int calculateGrossMargin();
	boolean deleteSchedule(int scheduleId);
	List<Object[]>  findKPIsByCity();
	List<Object[]>  findKPIsByService();
	List<Object[]>  findKPIsByEmploymentType();
	List<Schedule> findNotBilledSchedule();
	List<Schedule> findLowGM();
	List<Schedule> searchByClient(String name);
	
}
