package org.mypackage.hello;

import java.time.LocalDate;
import java.time.Period;

public class NameHandler {
    private String name;
    private LocalDate birthDate;

    public NameHandler() {
        this.name = null;
        this.birthDate = null;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    // Método para calcular la edad
    public int getAge() {
        if (birthDate == null) return 0;
        return Period.between(birthDate, LocalDate.now()).getYears();
    }
}