package kjistik.backend.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kjistik.backend.Models.Grades;
import kjistik.backend.Repository.GradesRepository;
import lombok.Data;

@Data
@Service
public class GradesServiceImp implements GradesService {

    @Autowired
    GradesRepository repo;

    @Override
    public List<Grades> all() {
        return (List<Grades>) repo.findAll();
    }

    @Override
    public Grades one(Long id) {
        return repo.findById(id).orElseThrow();
    }

    @Override
    public Grades newGrade(Grades nuevo) {
        return repo.save(nuevo);
    }

    /*
     * @Override
     * public Grades Change(Grades newGrade, Long id) {
     * 
     * return repo.findById(id)
     * .map(grade -> {
     * grade.setGrade(newGrade.getGrade());
     * grade.setStudent(newGrade.getStudent());
     * grade.setSubject(newGrade.getSubject());
     * return repo.save(grade);
     * })
     * .orElseGet(() -> {
     * newGrade.setIdGrade(id);
     * return repo.save(newGrade);
     * });
     * }
     */
    @Override
    public void delete(Long id) {
        repo.deleteById(id);

    }

}
