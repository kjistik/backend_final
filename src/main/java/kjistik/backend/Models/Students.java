package kjistik.backend.Models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//many to one (grades)
//many to many (subjects)

@Entity(name = "students")
@Table(name = "students")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Students {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idStudent")
    Long idStudent;

    @Column(name = "student_name")
    String student_name;

    @Column(name = "student_lastName")
    String student_lastName;

    @Column(name = "active")
    boolean active;

    @JsonBackReference (value=("grades_list"))
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idGrade", cascade = CascadeType.ALL)
    List<Grades> gradesList;

    @JsonBackReference (value="many_students")
    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    }, mappedBy = "many")

    List<Subject> many;

}