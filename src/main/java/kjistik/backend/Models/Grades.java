package kjistik.backend.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//many to one (teachers)
//many to one (subjects)
//many to one (students)

@Table(name = "grades")
@Entity(name="grades")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Grades {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idGrade")
    long idGrade;

    @ManyToOne
    @JoinColumn(name = "grades_student")
    Students student;

    @Column(name="grades_subject")
    Long subject;

    @Column(name="grades_teacher")
    Long teacher;

    @Column(name = "grade")
    int grade;

}