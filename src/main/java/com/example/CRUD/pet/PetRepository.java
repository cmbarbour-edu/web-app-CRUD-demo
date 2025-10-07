package com.example.CRUD.pet;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PetRepository extends JpaRepository<Pet, Long> {
    
    List<Pet> getPetsBySpecies(String species);

    @Query(value = "select * from pets p where p.awards like %?1%", nativeQuery = true)
    List<Pet> getPetsByAwards(String award);

    @Query(value = "select * from pets p where p.name like %?1%", nativeQuery = true)
    List<Pet> getPetsByName(String name);
}
