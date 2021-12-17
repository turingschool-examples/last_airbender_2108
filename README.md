# The Last Airbender

### Background

The Last Airbender is an animated series that ran from 2005 to 2008. Some people can manipulate classical elements (wind, water, fire, earth) with psychokinetic variants of the Chinese martial arts known as "bending". One individual, the Avatar, is capable of bending all four elements and is responsible for maintaining harmony between the world's four nations.

The four nations are: the "Water Tribes", the "Earth Kingdom", the "Fire Nation", and the "Air Nomads".

You *DO NOT* need to have watched this series to complete this assessment.

### Instructions

Using an Airbender API provided to you by your instructors, retrieve a sampling of characters for a given Nation, and display the relevant information per the instructions from your instructor.

### Versions

Rails 5.2.6

Ruby 2.7.2

### Setup

- Fork and clone this repo
- `bundle install`
- `rails db:{create,migrate}`
- `rails s`


Fork and clone this repo and follow the setup instructions.
Complete the following user story using The Last Airbender API. Read the user story CAREFULLY to make sure you understand what we’re looking for!

We will be searching The Last Airbender API by “Nation” (e.g Air Nomads, Earth Kingdom, etc) in order to retrieve a list of the members that belong to that nation.

Be sure to TDD all of your work. Commit your work every 15 minutes. Get it working first, then refactor into the Facade and Service design patterns.

As a user,
When I visit "/"
And I Select "Fire Nation" from the select field
(Note: Use the existing select field)
And I click "Search For Members"
Then I should be on page "/search"
Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
And I should see a list with the detailed information for the first 25 members of the Fire Nation.

And for each of the members I should see:
- The name of the member (and their photo, if they have one)
- The list of allies or "None"
- The list of enemies or "None"
- Any affiliations that the member has
example
GET /api/v1/characters?affiliation=NATION+NAME
get characters with a specific affiliation

Choices: Fire Nation, Water Tribe, Earth Kingdom, and more!
[
{
"_id": "5cf5679a915ecad153ab68fd",
"allies": [
"Ozai"
],
"enemies": [
"Earth Kingdom"
],
"name": "Chan (Fire Nation admiral)",
"affiliation": "Fire Nation Navy"
},
{
"_id": "5cf5679a915ecad153ab6906",
"allies": [
"Ty Lee"
],
"enemies": [
"Appa"
],
"photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
"name": "Circus master",
"affiliation": "Fire Nation circus"
},
{
"_id": "5cf5679a915ecad153ab68ee",
"allies": [
"Ozai"
],
"enemies": [
"Zuko"
],
"photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817",
"name": "Bujing",
"affiliation": "Fire Nation military"
},
{
"_id": "5cf5679a915ecad153ab68cc",
"allies": [
"Fire Nation"
],
"enemies": [
"Aang"
],
"photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
"name": "Afiko",
"affiliation": "Fire Nation"
},
{
"_id": "5cf5679a915ecad153ab68fc",
"allies": [
"Admiral Chan"
],
"enemies": [
"Azula",
""
],
"photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/9/9d/Chan.png/revision/latest?cb=20140908141053",
"name": "Chan",
"affiliation": "Fire Nation"
},
{
"_id": "5cf5679a915ecad153ab6907",
"allies": [
"Circus master"
],
"enemies": [
"Appa"
],
"photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/b/bd/Circus_trainer.png/revision/latest?cb=20130705125545",
"name": "Circus trainer",
"affiliation": "Fire Nation circus"
},
