# f25-jpa-crud-api
Simple CRUD API for Student Objects with JPA (Hibernate)

### Version
1.0.0

## Installation
- Get the project
    - clone
        ```
      git clone https://github.com/uncg-csc340/su25-jpa-crud-api.git
        ```
    - OR download zip.
- Open the project in VS Code.
- This project is built to run with jdk 21.
- [Dependencies]([https://github.com/uncg-csc340/su25-jpa-crud-api/blob/3149ec363e4aae4baebe6f755df7d4c2d79c9d2c/pom.xml#L32](https://github.com/csc340-uncg/f25-jpa-crud-api/blob/6b2860c4ad01ca46b6b62852ca966bfadc8dfc6a/pom.xml#L32)) to JPA and Postgres in addition to the usual Spring Web. JPA handles the persistence, Postgresql is the database to be used.
- [`/src/main/resources/application.properties`](https://github.com/csc340-uncg/f25-jpa-crud-api/blob/6b2860c4ad01ca46b6b62852ca966bfadc8dfc6a/src/main/resources/application.properties) This file has the configuration for the PostgreSQL database to use for the API.
  - You MUST have the database up and running before running the project!
    - Login to your neon.tech account.
    - Locate your database project.
    - On the project dashboard, click on "Connect" and select Java.
    - Copy the connection string provided.
    - Paste it as a value for the property `spring.datasource.url`. No quotation marks.
- Build and run the main class. You should see a new table created in the Neon database.

## API Endpoints
Base URL: [`http://localhost:8080/pets`](http://localhost:8080/pets)


1. ### [`/`](http://localhost:8080/pets/) (GET)
Gets a list of all pets in the database.

#### Response - A JSON array of Pet objects.

 ```
[
  {
    "petID": 1,
    "name": "Mark",
    "description": "A loving bloodhound who is perfect for families with children. Relaxed and calm around children.",
    "species": "Dog",
    "awards": ""
  },
  {
    "petID": 3,
    "name": "Zeus",
    "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
    "species": "Axolotl",
    "awards": "February Pet of the Month"
  },
  {
    "petID": 7,
    "name": "Mochi",
    "description": "mochi is a curious axolotl who spends most of the day floating peacefully, occasionally wiggling over to greet anyone who taps the glass.",
    "species": "Axolotl",
    "awards": "May Cutest Smile, July Coolest Tank Setup"
  }
]
```

2. ### [`/{petId}`](http://localhost:8080/pets/1) (GET)
Gets an individual pet in the system. Each Pet is identified by a numeric `petID`

#### Parameters
- Path Variable: `PetID` &lt;Long &gt; - REQUIRED

#### Response - A single Pet

```
  {
    "petID": 1,
    "name": "Mark",
    "description": "A loving bloodhound who is perfect for families with children. Relaxed and calm around children.",
    "species": "Dog",
    "awards": ""
  }
```

3. ### [`/search`](http://localhost:8080/pets/search?name=Zeus) (GET)
Gets a list of pets with a name that contains the given string.

#### Parameters
- query parameter: `name` &lt; String &gt; - REQUIRED

#### Response - A JSON array of Pet objects.

```
[
  {
    "petID": 3,
    "name": "Zeus",
    "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
    "species": "Axolotl",
    "awards": "February Pet of the Month"
  }
]
```

4. ### [`/species/{species}`](http://localhost:8080/pets/species/Axolotl) (GET)
Gets a list of pets of a given species.

#### Parameters
- path variable: `species` &lt; String &gt; - REQUIRED

#### Response - A JSON array of Pet objects.

```
[
  {
    "petID": 3,
    "name": "Zeus",
    "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
    "species": "Axolotl",
    "awards": "February Pet of the Month"
  },
  {
    "petID": 7,
    "name": "Mochi",
    "description": "mochi is a curious axolotl who spends most of the day floating peacefully, occasionally wiggling over to greet anyone who taps the glass.",
    "species": "Axolotl",
    "awards": "May Cutest Smile, July Coolest Tank Setup"
  }
]
```
5. ### [`/awards`](http://localhost:8080/pets/awards?award=July) (GET)
Gets a list of students with an award that contains a given string. If the award is null, gets a list of all pets in the database.

#### Parameters
- query parameter: `award` &lt;String&gt; - REQUIRED

#### Response - A JSON array of Pet objects.

```
[
  {
    "petID": 3,
    "name": "Zeus",
    "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
    "species": "Axolotl",
    "awards": "February Pet of the Month"
  },
  {
    "petID": 6,
    "name": "Luna",
    "description": "luna is a playful border collie who loves to herd anything that moves, including her own tail. She’s quick to learn tricks and adores frisbee afternoons.",
    "species": "Dog",
    "awards": "February Animal of the Month, March Best Trick Performer"
  }
]
```
6. ### [`/`](http://localhost:8080/pets/) (POST)
Create  a new Pet entry

#### Request Body
A Pet object. Note the object does not include an ID as this is autogenerated.
```
{
  "name": "Pumpkin",
  "description": "pumpkin is a round, orange tabby cat who loves curling up in warm spots and purring loudly whenever someone pets her.",
  "species": "Cat",
  "awards": "October Cuddliest, November Warmest Purr"
}
```
#### Response - The newly created Pet.

```
  {
    "petID": 13
    "name": "Pumpkin",
    "description": "pumpkin is a round, orange tabby cat who loves curling up in warm spots and purring loudly whenever someone pets her.",
    "species": "Cat",
    "awards": "October Cuddliest, November Warmest Purr"
  }
```

7. ### [`/{petID}`](http://localhost:8080/pets/3) (PUT)
Update an existing Pet.

#### Parameters
- Path Variable: `petID` &lt;integer&gt; - REQUIRED

#### Request Body
A student object with the updates.
```
{
  "petID": 3,
  "name": "Zeus Updated",
  "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
  "species": "Axolotl",
  "awards": "February Pet of the Month"
}
```
#### Response - the updated Pet object.
```
{
  "petID": 3,
  "name": "Zeus Updated",
  "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
  "species": "Axolotl",
  "awards": "February Pet of the Month"
}
```

8. ### [`/{PetID}`](http://localhost:8080/pets/3) (DELETE)
Delete an existing Student.

#### Parameters
- Path Variable: `petID` &lt;integer&gt; - REQUIRED

#### Response - the updated list of Pets.
```
[
  {
    "petID": 1,
    "name": "Mark",
    "description": "A loving bloodhound who is perfect for families with children. Relaxed and calm around children.",
    "species": "Dog",
    "awards": ""
  },
  {
    "petID": 3,
    "name": "Zeus",
    "description": "A blue spotted axolotl who loves playing in his tank. Requires much effort to maintain, so not a good pet for children.",
    "species": "Axolotl",
    "awards": "February Pet of the Month"
  },
  {
    "petID": 7,
    "name": "Mochi",
    "description": "mochi is a curious axolotl who spends most of the day floating peacefully, occasionally wiggling over to greet anyone who taps the glass.",
    "species": "Axolotl",
    "awards": "May Cutest Smile, July Coolest Tank Setup"
  }
]
```

## [Demonstration](https://uncg-my.sharepoint.com/:v:/g/personal/cmbarbour_uncg_edu/EcJXuRCvPTFBi21ZyfmWgbYByjXbTxweL04c40QqGDRoJA?e=t4xc78)