<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pet-details</title>
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
                    <a class="nav-link" href="/pets">Home</a>
                    <a class="nav-link" href="/pets/create">Animal Form</a>               
                </div>
            </div>
        </div>
    </nav>
    <!--Title-->
    <h1 class="text-center m-3">${pet.name}</h1>
    <!--image card-->
    <div class="card h-100" style="max-width:fit-content; margin: 50px;">
        <img src="https://static.wixstatic.com/media/0ad4a1_fac5b71cb1ec4910b6d3f401b7569528~mv2.jpeg/v1/fill/w_1405,h_849,al_c/0ad4a1_fac5b71cb1ec4910b6d3f401b7569528~mv2.jpeg" class="rounded card-img-top" alt="..." style="max-width: 100%; height: auto;">
        <div class="card-body">
            <h3>Species:</h3>
            <p class="card-text"> ${pet.species} </p>
            <h3>Details:</h3>
            <p class="card-text"> ${pet.description} </p>
            <h3>Awards:</h3>
            <p class="card-text"> ${pet.awards} </p>
            <a href="/pets" class="btn btn-primary">Back</a>
        </div>
    </div>
</body>
</html>