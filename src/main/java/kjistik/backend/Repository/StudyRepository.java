package kjistik.backend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kjistik.backend.Models.Study;

@Repository
public interface StudyRepository extends JpaRepository<Study, Long> {

}