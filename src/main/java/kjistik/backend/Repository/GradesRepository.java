package kjistik.backend.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import kjistik.backend.Models.Grades;

@Repository
public interface GradesRepository extends CrudRepository<Grades, Long> {

}