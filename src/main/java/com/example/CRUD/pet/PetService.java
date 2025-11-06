package com.example.CRUD.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

@Service
public class PetService {
    @Autowired
    private PetRepository petRepository;

    /**
     * Method to get all pets
     *
     * @return List of all pets
     */
    public Object getAllPets() {
        return petRepository.findAll();
    }

    /**
     * Method to get a pet by its ID
     *
     * @param petID ID of the pet
     * @return The pet with the given ID
     */
    public Pet getPetsByID(@PathVariable Long ID) {
        return petRepository.findById(ID).orElse(null);
    }

    /**
     * Method to get a pet by its name
     *
     * @param name The name of the pet
     * @return List of pets with the given name
     */
    public Object getPetsByName(@PathVariable String name) {
        return petRepository.getPetsByName(name);
    }

    /**
     * Method to get a pet by its species
     *
     * @param species The species of the pet
     * @return List of pets with the given species
     */
    public Object getPetsBySpecies(@PathVariable String species) {
        return petRepository.getPetsBySpecies(species);
    }

    /**
     * Method to a pet by its awards
     *
     * @param award The award of the pet
     * @return List of pets with the given award
     */
    public Object getPetsByAward(@PathVariable String award) {
        return petRepository.getPetsByAwards(award);
    }

    /**
     * Method to add a new pet
     *
     * @param pet The pet to be added
     * @return The pet that was added
     */
    public Pet addPet(Pet pet) {
        return petRepository.save(pet);
    }

    /**
     * Method to change an existing pet
     *
     * @param petID The ID of the pet to be changed
     * @param pet The pet with the updated information
     * @return The pet that was updated
     */
    public Pet updatePet(Long petID, Pet pet) {
        return petRepository.save(pet);
    }

    /**
     * Method to delete a pet by its ID
     *
     * @param petID The ID of the pet to be deleted
     */
    public void deletePet(Long petID) {
        petRepository.deleteById(petID);
    }
    
}
