package kjistik.backend.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import kjistik.backend.Models.Teachers;

@Repository
public interface TeachersRepository extends CrudRepository<Teachers, Long>{
    
}
