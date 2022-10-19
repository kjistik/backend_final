package kjistik.backend.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;


//many to many (students)
//one to many (teachers)
//one to many (grades)

@Entity 
@Table(name = "subjects")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Setter
public class Subjects {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idSubject")
    Long idSubject;

    @Column(name = "subject_name")
    String subject;
}
