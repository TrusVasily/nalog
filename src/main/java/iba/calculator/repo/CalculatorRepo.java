package iba.calculator.repo;

import iba.calculator.model.Calculator;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CalculatorRepo extends JpaRepository<Calculator, Integer> {
}