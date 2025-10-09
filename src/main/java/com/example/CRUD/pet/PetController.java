package com.example.CRUD.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PetController {
    @Autowired
    private PetService petService;

    /**
     * Endpoint to get all pets
     *
     * @return The list of all students
     */
    @GetMapping("/pets/")
    public Object getAllPets() {
        return petService.getAllPets();
    }

    /**
     * Endpoint to add a new pet
     *
     * @param pet The pet to be added
     * @return List of all pets after addition
     */
    @PostMapping("/pets/")
    public Object addPet(@RequestBody Pet pet) {
        return petService.addPet(pet);
    }

    /**
     * Endpoint to update a pet
     *
     * @param petID The ID of the pet to be updated
     * @param pet The pet data to be updated
     * @return Pet with the given ID after update
     */
    @PutMapping("/pets/{petID}")
    public Object updatePet(@PathVariable Long petID, @RequestBody Pet pet) {
        petService.updatePet(petID, pet);
        return petService.getPetsByID(petID);
    }

    /**
     * Endpoint to delete a pet by its ID
     *
     * @param petID The ID of the pet to be updated
     * @return List of all pets after deletion
     */
    @DeleteMapping("/pets/{petID}")
    public Object deletePet(@PathVariable Long petID) {
        petService.deletePet(petID);
        return petService.getAllPets();
    }

    /**
     * Endpoint to get a pet by its ID
     *
     * @param petID The ID of the pet
     * @return The student with the given ID
     */
    @GetMapping("/pets/{petID}")
    public Object getPetsByID(@PathVariable Long petID) {
        return petService.getPetsByID(petID);
    }

    /**
     * Endpoint to get a pet by its name
     *
     * @param name The name of the pet
     * @return The list of all pets with the given name
     */
    @GetMapping("/pets/search")
    public Object getPetsByName(@RequestParam String name) {
        if (name != null) {
            return petService.getPetsByName(name);
        }
        else return petService.getAllPets();
    }

    /**
     * Endpoint to get a pet by its species
     *
     * @param species The species of the pet
     * @return The list of all pets with the given species
     */
    @GetMapping("/pets/species/{species}")
    public Object getPetsBySpecies(@PathVariable String species) {
        if (species != null) {
            return petService.getPetsBySpecies(species);
        }
        else return petService.getAllPets();
    }

    /**
     * Endpoint to get a pet by its awards
     *
     * @param award The award of the pet
     * @return The list of all pets with the given award
     */
    @GetMapping("/pets/awards")
    public Object getPetsByAward(@RequestParam String award) {
        if (award != null) {
            return petService.getPetsByAward(award);
        }
        else return petService.getAllPets();
    }   
}