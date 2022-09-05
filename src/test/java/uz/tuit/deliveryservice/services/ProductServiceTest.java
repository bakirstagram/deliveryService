package uz.tuit.deliveryservice.services;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import uz.tuit.deliveryservice.models.Product;
import uz.tuit.deliveryservice.repositories.ProductRepository;
import uz.tuit.deliveryservice.repositories.UserRepository;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class ProductServiceTest {

    @Mock
    private ProductRepository productRepository;

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private ProductService productService;

    @Test
    void successFindByTitle() {
        String title = "title";

        List<Product> expected = List.of();
        when(productRepository.findByTitle(title))
                .thenReturn(expected);

        List<Product> actual = productService.listProducts(title);

        verify(productRepository, times(1))
                .findByTitle(title);
        verify(productRepository, times(0))
                .findAll();

        assertEquals(expected, actual);
    }

    @Test
    void successFindByEmptyTitle() {
        String title = null;

        List<Product> expected = List.of();

        when(productRepository.findAll())
                .thenReturn(expected);

        List<Product> actual = productService.listProducts(title);

        verify(productRepository, times(0))
                .findByTitle(title);
        verify(productRepository, times(1))
                .findAll();

        assertEquals(expected, actual);
    }
}