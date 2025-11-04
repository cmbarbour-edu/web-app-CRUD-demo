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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                    <a class="nav-link" href="details.html">Contest Winner</a>
                    <a class="nav-link" href="about.html">About</a>
                    <a class="nav-link" href="new-animal-form.html">Animal Form</a>
                </div>
            </div>
        </div>
    </nav>
    <h1 class="text-center m-3">Available Animals for Adoption</h1>
    <h6 class="text-center m-3">Click "Details" to learn more about each animal!</h3>
    <!--search and add animal button-->
    <div class="d-flex gap-2 justify-content-between m-3">
        <input type="text" class="form-control " placeholder="Search for an animal..." aria-label="Search for an animal..." aria-describedby="button-addon2">
        <a class="btn btn-primary" href="new-animal-form.html" type="button">Add an animal</a>
    </div>
    <!--image cards-->
    <div class="row row-cols-3 row-cols-md-3 g-4">
        <div class="col">
            <div class="card h-100">
                <img src="https://upload.wikimedia.org/wikipedia/commons/d/d1/Bloodhound_Erland22.jpg" class="card-img-top" alt="A bloodhound named Smitty." style="max-width: 100%; height: auto;">
                <div class="card-body">
                    <h5 class="card-title">Smitty</h5>
                    <p class="card-text">Bloodhound</p>
                    <a href="details.html" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://upload.wikimedia.org/wikipedia/commons/2/27/Opossum_2.jpg" class="card-img-top" alt="An opossum named Jennifer." style="max-width: 100%; height: auto;">
                <div class="card-body">
                    <h5 class="card-title">Jennifer</h5>
                    <p class="card-text">Opossum</p>
                    <a href="details.html" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://www.reconnectwithnature.org/getmedia/5c5eca97-0476-452a-bae9-6b81acb28d27/eastern-box-turtle-shutterstock.jpg?width=1500&height=1000&ext=.jpg" class="card-img-top" alt="A box turtle named Rico." style="max-width: 100%; height: auto;">
                <div class="card-body">
                    <h5 class="card-title">Rico</h5>
                    <p class="card-text">Box Turtle</p>
                    <a href="details.html" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://www.saczoo.org/assets/2941/axolotl-1-1.jpg" class="card-img-top" alt="An axolotl named Zeus." style="max-width: 100%; height: auto;">
                <div class="card-body">
                    <h5 class="card-title">Zeus</h5>
                    <p class="card-text">Axolotl</p>
                    <a href="details.html" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://tica.org/wp-content/uploads/2024/04/cat-1-scaled.jpg" class="card-img-top" alt="A calico cat named Charles." style="max-width: 100%; height: auto;">
                <div class="card-body">
                    <h5 class="card-title">Charles</h5>
                    <p class="card-text">Calico Cat</p>
                    <a href="details.html" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://sipseywilder.com/cdn/shop/articles/lunamoth_1200x1200.jpg?v=1648654848" class="card-img-top" alt="A luna moth named Arri." style="max-width: 100%; height: auto;">
                <div class="card-body">
                    <h5 class="card-title">Arri</h5>
                    <p class="card-text">Luna Moth</p>
                    <a href="details.html" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
    </div>    
</body>
</html>