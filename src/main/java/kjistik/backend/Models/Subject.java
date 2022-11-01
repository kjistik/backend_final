package kjistik.backend.Models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

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
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idSubject")
    Long idSubject;

    @Column(name="active")
	boolean active;

    @Column(name = "subject_name")
    String subject_name;

    @JsonBackReference (value="subject_grade")
    @OneToMany(mappedBy = "grades_subject", cascade = CascadeType.ALL)
    List<Grades> subject_grade;

    @JsonBackReference(value="subject_teacher")
    @OneToMany(mappedBy = "subject_teacher")
    List<Teachers> subject_teacher;

    @JsonBackReference(value="many_study")
    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })
    
    @JoinTable(name = "student_subject", joinColumns = { @JoinColumn(name = "subjectId") }, inverseJoinColumns = {
            @JoinColumn(name = "studentId") })
    List<Students> many;
}
