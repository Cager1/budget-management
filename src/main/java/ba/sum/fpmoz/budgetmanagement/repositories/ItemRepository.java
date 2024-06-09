package ba.sum.fpmoz.budgetmanagement.repositories;

import ba.sum.fpmoz.budgetmanagement.models.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {
    List<Item> findAllByUserId(Long userId);
}
