package kjistik.backend.Services;

import java.util.List;

import kjistik.backend.Models.Subjects;

public interface SubjectService {
    List<Subjects> all();

    Subjects one(Long id);

    Subjects newSubject(Subjects nuevo);

    //Subjects Change(Subjects subject, Long id);

    void delete(Long id);
}
