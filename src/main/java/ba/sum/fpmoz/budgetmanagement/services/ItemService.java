package ba.sum.fpmoz.budgetmanagement.services;

import ba.sum.fpmoz.budgetmanagement.models.Item;
import ba.sum.fpmoz.budgetmanagement.repositories.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {

    private final ItemRepository itemRepository;

    @Autowired
    public ItemService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public Item getItemById(Long id) {
        return itemRepository.findById(id).orElse(null);
    }

    public void save(Item item) {
        itemRepository.save(item);
    }

    // other methods as needed

    // get items by user
    public List<Item> getItemsByUser(Long userId) {
        return itemRepository.findAllByUserId(userId);
    }

    public void delete(Long id) {
        itemRepository.deleteById(id);
    }
}
