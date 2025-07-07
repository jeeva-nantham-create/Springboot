package com.example.SBDemoPrg.Controllers;

import com.example.SBDemoPrg.Entity.StudentDetailsEntity;
import com.example.SBDemoPrg.Repository.StudentRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(StudentController.class)
public class StudentControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private StudentRepository studentRepo;

    // Insert Test
    @Test
    public void testInsertStudent() throws Exception {
        when(studentRepo.save(any(StudentDetailsEntity.class)))
            .thenReturn(new StudentDetailsEntity());

        mockMvc.perform(post("/student-details/submit")
                .param("name", "John")
                .param("rollNo", "R001")
                .param("department", "CSE")
                .param("phone", "1234567890")
                .param("place", "Salem")
                .param("domain", "AI"))
                .andExpect(status().isOk())
                .andExpect(view().name("sucess"));

        verify(studentRepo, times(1)).save(any(StudentDetailsEntity.class));
    }

    // Update Test 
    @Test
    public void testUpdateStudent() throws Exception {
        StudentDetailsEntity student = new StudentDetailsEntity();
        student.setRollNo("R001");

        when(studentRepo.findByRollNo("R001")).thenReturn(student);
        when(studentRepo.save(any(StudentDetailsEntity.class)))
            .thenReturn(student);

        mockMvc.perform(post("/student-details/update-student")
                .param("name", "Updated John")
                .param("rollNo", "R001")
                .param("department", "IT")
                .param("phone", "9876543210")
                .param("place", "Namakkal")
                .param("domain", "ML"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/student-details/alldetails"));

        verify(studentRepo, times(1)).findByRollNo("R001");
        verify(studentRepo, times(1)).save(any(StudentDetailsEntity.class));
    }

    //  Delete Test
    @Test
    public void testDeleteStudent() throws Exception {
        StudentDetailsEntity student = new StudentDetailsEntity();
        student.setRollNo("R001");

        when(studentRepo.findByRollNo("R001")).thenReturn(student);
        doNothing().when(studentRepo).delete(student);

        mockMvc.perform(get("/student-details/delete")
                .param("rollNo", "R001"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/student-details/alldetails"));

        verify(studentRepo, times(1)).findByRollNo("R001");
        verify(studentRepo, times(1)).delete(student);
    }

    // Delete Test
    @Test
    public void testDeleteStudent_NotFound() throws Exception {
        when(studentRepo.findByRollNo("R999")).thenReturn(null);

        mockMvc.perform(get("/student-details/delete")
                .param("rollNo", "R999"))
                .andExpect(status().isOk())
                .andExpect(view().name("delete"));

        verify(studentRepo, times(1)).findByRollNo("R999");
        verify(studentRepo, times(0)).delete(any());
    }
}
