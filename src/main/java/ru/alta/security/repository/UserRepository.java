package ru.alta.security.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import ru.alta.security.model.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

   @EntityGraph(attributePaths = "authorities")
   Optional<User> findOneWithAuthoritiesByUsername(String username);

   @EntityGraph(attributePaths = "authorities")
   Optional<User> findOneWithAuthoritiesByEmailIgnoreCase(String email);

}
