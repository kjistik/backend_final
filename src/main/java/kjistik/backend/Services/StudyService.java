package kjistik.backend.Services;

import java.util.List;

import kjistik.backend.Models.Study;

public interface StudyService {
    List<Study> all();

    Study one(Long id);

    Study newSubject(Study nuevo);

    //Subjects Change(Subjects subject, Long id);

    void delete(Long id);
}
