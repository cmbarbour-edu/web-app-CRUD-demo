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
                    <a class="nav-link" href="index.html">Home</a>
                    <a class="nav-link" href="details.html">Contest Winner</a>
                    <a class="nav-link" href="about.html">About</a>
                    <a class="nav-link active" aria-current="page" href="new-animal-form.html">Animal Form</a>                    
                </div>
            </div>
        </div>
    </nav>
    <!--new animal form-->
    <h1 class="text-center m-3">Add a New Animal</h1>
    <form style="max-width: 600px; margin: auto;">
        <div class="mb-3">
            <label for="animalName" class="form-label">Animal Name</label>
            <input type="text" class="form-control" id="animalName" placeholder="Enter the animal's name">
        </div>
        <div class="mb-3">
            <label for="animalType" class="form-label">Animal Type</label>
            <input type="text" class="form-control" id="animalType" placeholder="Enter the animal's type (e.g., Dog, Cat, Turtle)">
        </div>
        <div class="mb-3">
            <label for="animalDescription" class="form-label">Animal Description</label>
            <textarea class="form-control" id="animalDescription" rows="3" placeholder="Enter a brief description of the animal"></textarea>
        </div>
        <div class="mb-3">
            <label for="animalImage" class="form-label">Animal Image URL</label>
            <input type="text" class="form-control" id="animalImage" placeholder="Enter the URL of the animal's image">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
</body>
</html>