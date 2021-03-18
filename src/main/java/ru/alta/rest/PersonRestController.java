package ru.alta.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.alta.security.model.User;
import ru.alta.security.repository.UserRepository;

import java.util.Optional;

@RestController
@RequestMapping("/api")
public class PersonRestController {

   @Autowired
   UserRepository userR;

   @GetMapping("/person")
   public ResponseEntity<Optional<User>> getPerson() {
      Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
      String userName = loggedInUser.getName();
      Optional<User> user = userR.findOneWithAuthoritiesByUsername (userName);
//      String firstname = user.getFirstName();
//      String email = user.getEmail();

      return ResponseEntity.ok(user);

//      return ResponseEntity.ok(new Person("John Doe", "john.doe@test.org"));
}

   private static class Person {

      private final String name;
      private final String email;

      public Person(String name, String email) {
         this.name = name;
         this.email = email;
      }

      public String getName() {
         return name;
      }

      public String getEmail() {
         return email;
      }
   }
}
