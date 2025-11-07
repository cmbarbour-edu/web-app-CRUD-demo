package com.example.CRUD.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PetController {
    @Autowired
    private PetService petService;

    /**
     * Handles the request to display all pets.
     *
     * @param model The model to add attributes to for rendering the view.
     * @return The view name showing the list of all pets.
     */
    @GetMapping("/pets")
    public Object getAllPets(Model model) {
        model.addAttribute("petList", petService.getAllPets());
        model.addAttribute("title", "All pets: ");
        return "animal-list";
    }

    /**
     * Displays the form to create a new pet.
     *
     * @param model The model to add attributes to for rendering the form.
     * @return The view name for creating a new pet.
     */
    @GetMapping("/pets/createForm")
    public Object showCreateForm(Model model) {
        Pet pet = new Pet();
        model.addAttribute("pet", pet);
        model.addAttribute("title", "Create new pet");
        return "animal-create";
    }

    /**
     * Adds a new pet to the system.
     *
     * @param pet The Pet object containing the data to be saved.
     * @return Redirect URL to the newly created pet's detail page.
     */
    @PostMapping("/pets")
    public Object addPet(Pet pet) {
        Pet newPet = petService.addPet(pet);
        return "redirect:/pets/" + newPet.getPetID();
    }

    /**
     * Displays the form to update an existing pet.
     *
     * @param petID The ID of the pet to update.
     * @param model The model to add attributes to for rendering the form.
     * @return The view name for updating the pet.
     */
    @GetMapping("/pets/updateForm/{petID}")
    public Object showUpdateForm(@PathVariable Long petID, Model model) {
        Pet pet = petService.getPetsByID(petID);
        model.addAttribute("pet", pet);
        model.addAttribute("title", "Update pet: " + petID);
        return "animal-update";
    }

    /**
     * Updates an existing pet's information.
     *
     * @param petID The ID of the pet to update.
     * @param pet The Pet object containing updated data.
     * @return Redirect URL to the updated pet's detail page.
     */
    @PostMapping("/pets/update/{petID}")
    public Object updatePet(@PathVariable Long petID, Pet pet) {
        petService.updatePet(petID, pet);
        return "redirect:/pets/" + petID;
    }

    /**
     * Deletes a pet by its ID.
     *
     * @param petID The ID of the pet to delete.
     * @return Redirect URL to the list of all pets after deletion.
     */
    @GetMapping("/pets/delete/{petID}")
    public Object deletePet(@PathVariable Long petID) {
        petService.deletePet(petID);
        return "redirect:/pets";
    }

    /**
     * Retrieves a pet by its ID.
     *
     * @param petID The ID of the pet to retrieve.
     * @param model The model to add attributes to for rendering the view.
     * @return The view name showing the pet's details.
     */
    @GetMapping("/pets/{petID}")
    public Object getPetsByID(@PathVariable Long petID, Model model) {
        model.addAttribute("pet", petService.getPetsByID(petID));
        model.addAttribute("title", "Pet #: " + petID);
        return "animal-details";
    }

    /**
     * Searches for pets by name.
     *
     * @param name The name or substring to search for.
     * @param model The model to add attributes to for rendering the view.
     * @return The view name showing the search results or all pets if name is null.
     */
    @GetMapping("/pets/search")
    public Object getPetsByName(@RequestParam String name, Model model) {
        if (name != null && name !="") {
            model.addAttribute("petList", petService.getPetsByName(name));
            model.addAttribute("title", "Pets containing substring " + name);
            return "animal-search";
        }
        else {
            model.addAttribute("petList", petService.getAllPets());
            model.addAttribute("title", "All pets:");
            return "animal-list";
        }
    }

    /**
     * Retrieves pets by their species.
     *
     * @param species The species to filter by.
     * @param model The model to add attributes to for rendering the view.
     * @return The view name showing pets of the given species, or all pets if species is null.
     */
    @GetMapping("/pets/species/{species}")
    public Object getPetsBySpecies(@PathVariable String species, Model model) {
        if (species != null) {
            model.addAttribute("petList", petService.getPetsBySpecies(species));
            model.addAttribute("title", "Pets by species: ");
            return "animal-species";
        }
        else {
            model.addAttribute("petList", petService.getAllPets());
            model.addAttribute("title", "All pets: ");
            return "animal-list";
        }
    }

    /**
     * Retrieves pets by a specific award.
     *
     * @param award The award to filter by.
     * @param model The model to add attributes to for rendering the view.
     * @return The view name showing pets with the given award, or all pets if award is null.
     */
    @GetMapping("/pets/awards")
    public Object getPetsByAward(@RequestParam String award, Model model) {
        if (award != null) {
            model.addAttribute("petList", petService.getPetsByAward(award));
            model.addAttribute("title", "Pets with award: " + award);
            return "animal-list";
        }
        else {
            model.addAttribute("petList", petService.getAllPets());
            model.addAttribute("title", "All pets: ");
            return "animal-list";
        }
    }   
}