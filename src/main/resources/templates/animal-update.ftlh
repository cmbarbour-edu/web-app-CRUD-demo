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
            <a class="navbar-brand" href="/pets">Stocked Animal Adoptions</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" href="/pets">Home</a>
                    <a class="nav-link" href="/pets/createForm">Animal Form</a>                
                </div>
            </div>
        </div>
    </nav>
    <!--Update animal form-->
    <h1 class="text-center m-3">Update an Animal</h1>
    <h1>${title}</h1>
    <form id="new-pet" action="/pets/update/${pet.petID}" method="post">
        <input type="number" id="petID" name="petID" value="${pet.petID}" readonly/>
        <input type="text" id="name" name="name" value="${pet.name}" placeholder="Name" required/>
        <input type="text" id="species" name="species" value="${pet.species}" placeholder="Species" required/>
        <input type="text" id="description" name="description" value="${pet.description}" placeholder="Short description" required/>
        <input type="text" id="awards" name="awards" value="${pet.awards}" placeholder="Awards"/>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="/pets" class="btn btn-outline-danger" >Cancel</a>
        <a href="/pets/delete/${pet.petID?c}" class="btn btn-danger">Delete</a>
    </form>
</body>
</html>