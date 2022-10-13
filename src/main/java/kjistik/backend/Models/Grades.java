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

@Table(name = "grades")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Grades {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idGrade")
    long idGrade;

    @Column(name = "studentId")
    Long student;

    @Column(name = "subjectId")
    Long subject;

    @Column(name = "teacher")
    Long teacher;

    @Column(name = "grade")
    int grade;

}