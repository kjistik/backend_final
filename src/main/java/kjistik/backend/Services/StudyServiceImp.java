package kjistik.backend.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kjistik.backend.Models.Study;
import kjistik.backend.Repository.StudyRepository;

@Component
public class StudyServiceImp implements StudyService {

    @Autowired
    StudyRepository repo;

    @Override
    public List<Study> all() {
        return repo.findAll();
    }

    @Override
    public Study one(Long id) {

        return repo.findById(id).orElseThrow();
    }

    @Override
    public Study newSubject(Study nuevo) {

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
