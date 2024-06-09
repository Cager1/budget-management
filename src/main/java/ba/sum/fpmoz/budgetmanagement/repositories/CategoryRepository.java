package ba.sum.fpmoz.budgetmanagement.repositories;

import ba.sum.fpmoz.budgetmanagement.models.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
