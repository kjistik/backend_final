package kjistik.backend.Services;

import java.util.List;

import kjistik.backend.Models.Subject;

public interface SubjectService {
    List<Subject> all();

    Subject one(Long id);

    Subject newSubject(Subject nuevo);

    Subject Change(Subject subject, Long id);

    //void delete(Long id);
}
