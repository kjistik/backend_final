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

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="teachers")
public class Teachers {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="idTeacher")
    Long idTeacher;
    
    @Column(name="nameTeacher")
    String name;

    @Column(name="lastNameTeacher")
    String lastName;

    @Column(name="subject")
    Long subject;

    @Column(name="active")
    boolean active;
}
