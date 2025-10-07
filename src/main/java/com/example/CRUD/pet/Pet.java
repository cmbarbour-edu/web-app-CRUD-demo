package com.example.CRUD.pet;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "pets")
public class Pet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long petID;

    @Column(name = "name", nullable = false)
    private String name;
    
    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "species", nullable = false)
    private String species;

    @Column(name = "awards")
    private String awards;

    public Pet() {

    }

    public Pet(String name, String description, String species, String awards) {
        this.name = name;
        this.description = description;
        this.species = species;
        this.awards = awards;
    }

    public long getPetID() {
        return petID;
    }
    public void setPetID(long petID) {
        this.petID = petID;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description=description;
    }

    public String getSpecies() {
        return species;
    }
    public void setSpecies(String species) {
        this.species = species;
    }

    public String getAwards() {
        return awards;
    }
    public void setAwards(String awards) {
        this.awards = awards;
    }
    public void addAward(String award) {
        this.awards += (", " + award);
    }


}
