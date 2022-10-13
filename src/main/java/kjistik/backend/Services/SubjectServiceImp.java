package kjistik.backend.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kjistik.backend.Models.Subjects;
import kjistik.backend.Repository.SubjectsRepository;

@Component
public class SubjectServiceImp implements SubjectService {

    @Autowired
    SubjectsRepository repo;

    @Override
    public List<Subjects> all() {
        return repo.findAll();
    }

    @Override
    public Subjects one(Long id) {

        return repo.findById(id).orElseThrow();
    }

    @Override
    public Subjects newSubject(Subjects nuevo) {

        return repo.save(nuevo);
    }

    /*
     * @Override
     * public Subjects Change(Subjects newSubject, Long id) {
     * return repo.findById(id)
     * .map(subject -> {
     * subject.setSubject(newSubject.getSubject());
     * return subject;
     * })
     * .orElseGet(() -> {
     * newSubject.setIdSubject(id);
     * return repo.save(newSubject);
     * });
     * }
     */
    @Override
    public void delete(Long id) {
        repo.deleteById(id);

    }

}
