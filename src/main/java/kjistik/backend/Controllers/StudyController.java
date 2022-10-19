package kjistik.backend.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kjistik.backend.Models.Study;
import kjistik.backend.Services.StudyServiceImp;

@RestController
@RequestMapping("/api/materias")
@CrossOrigin

public class StudyController {

    @Autowired
    StudyServiceImp service;

    @GetMapping("/todos")
    List<Study> all() {
        return service.all();

    }

    @GetMapping("/uno/{id}")
    Study one(@PathVariable Long id) {
        return service.one(id);
    }

    @PostMapping("/nuevo")
    Study newSubject(@RequestBody Study newSubject) {
        return service.newSubject(newSubject);
    }
/* 
    @PutMapping("/cambiar/{id}")
    Subjects change(@RequestBody Subjects subject, @PathVariable Long id) {
        return service.Change(subject, id);
    }
*/
    @DeleteMapping("/borrar/{id}")
    void deleteById(@PathVariable Long id){
        service.delete(id);
    }
}