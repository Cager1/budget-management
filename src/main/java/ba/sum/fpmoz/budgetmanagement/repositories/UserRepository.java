package ba.sum.fpmoz.budgetmanagement.repositories;
import ba.sum.fpmoz.budgetmanagement.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
