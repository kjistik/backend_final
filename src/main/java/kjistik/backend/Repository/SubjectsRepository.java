package kjistik.backend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kjistik.backend.Models.Subjects;

@Repository
public interface SubjectsRepository extends JpaRepository<Subjects, Long> {

}