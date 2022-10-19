package kjistik.backend.Services;

import java.util.List;

import org.springframework.stereotype.Component;

import kjistik.backend.Models.Students;
import kjistik.backend.Repository.StudentRepository;

@Component

public class StudentServiceImp implements StudentService {

    StudentRepository repo;

    public StudentServiceImp(StudentRepository repo) {
        this.repo = repo;
    }

    @Override
    public List<Students> all() {
        return (List<Students>) repo.findAll();
    }

    @Override
    public Students one(Long id) {

        return repo.findById(id).orElseThrow();
    }

    @Override
    public Students newStudent(Students nuevo) {
        return repo.save(nuevo);
    }

    @Override
    public Students Change(Students newAlumno, Long id) {

        return repo.findById(id)
                .map(alumno -> {
                    alumno.setName(newAlumno.getName());
                    alumno.setLastName(newAlumno.getLastName());
                    alumno.setActive(newAlumno.isActive());
                    return repo.save(alumno);
                })
                .orElseGet(() -> {
                    newAlumno.setIdStudent(id);
                    return repo.save(newAlumno);
                });
    }

    /*
     * @Override
     * public void delete(Long id) {
     * repo.deleteById(id);
     * }
     */
    @Override
    public Students disable(Students student, Long id) {
        return repo.findById(id)
                .map(alumno -> {
                    alumno.setActive(student.isActive());
                    return repo.save(alumno);
                }).orElseThrow();
    }

}