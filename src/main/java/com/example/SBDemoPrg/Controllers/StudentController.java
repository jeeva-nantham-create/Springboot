package com.example.SBDemoPrg.Controllers;
import org.springframework.ui.Model;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.example.SBDemoPrg.Entity.StudentDetailsEntity;
import com.example.SBDemoPrg.Model.StudentDetails;
import com.example.SBDemoPrg.Repository.StudentRepository;

import jakarta.transaction.Transactional;




@Controller
@RequestMapping("/student-details")
public class StudentController {
	
	  @GetMapping("/home")
	    public String home() {
	        return "main"; 
	    }
	  
	  @GetMapping("/insert")
	    public String insert() {
	        return "insert"; 
	    }
	  
	  @GetMapping("/delete")
	  @Transactional
	  public String deleteStudentByRollNo(@RequestParam("rollNo") String rollNo , RedirectAttributes redirectAttributes) {
		  List<StudentDetailsEntity> students = StudentRepo.deleteAllByRollNo(rollNo);
		  if (!students.isEmpty()) {
		        StudentRepo.deleteAllByRollNo(rollNo);
	          return "redirect:/student-details/alldetails";
	      } else {
	    	  return "delete";
	      }
	    
	  }

	  @GetMapping("/delete-student")
	  public String deleteForm() {
	      return "delete"; 
	  }	

	  
	  @GetMapping("/update")
	    public String update() {
	        return "update"; 
	    }
	  
	  @GetMapping("/update-form")
	  public String showUpdateForm(@RequestParam("rollNo") String rollNo, Model model) {
	      StudentDetailsEntity student = StudentRepo.findByRollNo(rollNo);
	      if (student != null) {
	          model.addAttribute("student", student);
	          return "update";  
	      } else {
	          return "redirect:/student-details/alldetails";
	      }
	  }

	  
		@GetMapping("/search-form")
		public String showSearchForm(org.springframework.ui.Model model) {
		    model.addAttribute("searched", false);
		    return "search";
		}


		@GetMapping("/search")
		public String searchByRollNo(@RequestParam("rollNo") String rollNo, org.springframework.ui.Model model) {
		    StudentDetailsEntity student = StudentRepo.findByRollNo(rollNo);
		    if (student != null) {
		        model.addAttribute("student", student);
		    } 
		    return "search"; 
		}
	
	@Autowired
	private StudentRepository StudentRepo;
	
	@GetMapping("/")
	public String hello() {
		return "Hello From Student Controller";
	}
	

    @PostMapping("/submit")
    public String saveStudent(
//            @RequestParam("id") int Id,
            @RequestParam("name") String Name,
            @RequestParam("rollNo") String rollNo,
            @RequestParam("department") String Department,
            @RequestParam("phone") String Phone_No,
            @RequestParam("place") String Place,
            @RequestParam("domain") String Domain_Name,
            
            Model model
    ) {
        StudentDetailsEntity student = new StudentDetailsEntity();
        student.setName(Name);
        student.setRollNo(rollNo);
        student.setDepartment(Department);
        student.setPhoneNo(Phone_No);
        student.setPlace(Place);
        student.setDomainName(Domain_Name);
        

        StudentRepo.save(student); 

        return "sucess";  
    }
    
    
    @PostMapping("/update-student")
    public String updateStudent(
        @RequestParam("name") String name,
        @RequestParam("rollNo") String rollNo,
        @RequestParam("department") String department,
        @RequestParam("phone") String phone,
        @RequestParam("place") String place,
        @RequestParam("domain") String domain
    ) {
        StudentDetailsEntity student = StudentRepo.findByRollNo(rollNo);
        if (student != null) {
            student.setName(name);
            student.setRollNo(rollNo);
            student.setDepartment(department);
            student.setPhoneNo(phone);
            student.setPlace(place);
            student.setDomainName(domain);

            StudentRepo.save(student);
        }
        return "redirect:/student-details/alldetails";
    }

    
    @GetMapping("/alldetails")
    public String viewStudents(Model model) {
        List<StudentDetailsEntity> students = StudentRepo.findAll();
        model.addAttribute("students", students); 
        return "alldetails"; 
    }
    
	@GetMapping("/student-db")
	public List<StudentDetailsEntity> getUsers(){
		return StudentRepo.findAll() ;
	}
	
	@PostMapping("/add-student-details")
    public StudentDetailsEntity addStudent(@RequestBody StudentDetailsEntity student) {
       return StudentRepo.save(student);
    }
	


}
