package kjistik.backend.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import kjistik.backend.Models.Students;

@Repository
public interface StudentRepository extends CrudRepository<Students, Long> {

}