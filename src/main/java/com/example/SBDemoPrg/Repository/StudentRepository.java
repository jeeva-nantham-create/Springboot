package com.example.SBDemoPrg.Repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SBDemoPrg.Entity.StudentDetailsEntity;
import com.example.SBDemoPrg.Model.StudentDetails;

public interface StudentRepository extends JpaRepository<StudentDetailsEntity, Long> {
	StudentDetailsEntity findByRollNo(String rollNo);
	List<StudentDetailsEntity> deleteAllByRollNo(String rollNo);

}