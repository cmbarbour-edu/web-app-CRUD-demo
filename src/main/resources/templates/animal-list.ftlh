<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            overflow-x: hidden;
        }
    </style>
</head>
<body>
    <!--navbar-->
    <nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">Stocked Animal Adoptions</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="/pets">Home</a>
                    <a class="nav-link" href="/pets/create">Animal Form</a>
                </div>
            </div>
        </div>
    </nav>
    <h1 class="text-center m-3">Available Animals for Adoption</h1>
    <h6 class="text-center m-3">Click "Details" to learn more about each animal!</h3>
    <!--search and add animal button-->
    <div class="d-flex gap-2 justify-content-between m-3">
        <input type="text" class="form-control " placeholder="Search for an animal..." aria-label="Search for an animal..." aria-describedby="button-addon2">
        <a class="btn btn-primary" href="/pets/create" type="button">Add an animal</a>
    </div>
    <!--image cards-->
    <div class="row row-cols-3 row-cols-md-3 g-4">
        <#list petList as pet>
            <div class="col">
                <div class="card h-100">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/d/d1/Bloodhound_Erland22.jpg" class="card-img-top" alt="A bloodhound named Smitty." style="max-width: 100%; height: auto;">
                    <div class="card-body">
                        <h5 class="card-title"> ${pet.name}</h5>
                        <p class="card-text">${pet.species}</p>
                        <a href="/pets/${pet.petID}" class="btn btn-primary">Details</a>
                    </div>
                </div>
            </div>
        </#list>    
</body>
</html>