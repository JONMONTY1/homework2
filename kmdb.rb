# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Cast.destroy_all

# Generate models and tables, according to the domain model.

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
movie1 = Movie.new
movie1["title"] = "Batman Begins"
movie1["year_released"] = "2005"
movie1["rated"] = "PG-13"
movie1["studio_id"] = "Warner Bros."
movie1.save

movie2 = Movie.new
movie2["title"] = "The Dark Knight"
movie2["year_released"] = "2008"
movie2["rated"] = "PG-13"
movie2["studio_id"] = "Warner Bros."
movie2.save

movie3 = Movie.new
movie3["title"] = "The Dark Knight Rises"
movie3["year_released"] = "2012"
movie3["rated"] = "PG-13"
movie3["studio_id"] = "Warner Bros."
movie3.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# puts "Movies: #{Movie.all.count}"

for Movie in movies
    title = Movie["title"]
    year_released = Movie["year_released"]
    rated = Movie["rated"]
    studio = Movie["studio_id"]

    puts "#{title}, #{year_released}, #{rated}, #{studio}"

end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.

Cast1 = Cast.new
Cast1["movie_id"] = "Batman Begins"
Cast1["actor_id"] = "Christian Bale"
Cast1["character_name"] = "Bruce Wayne"
Cast1.save

Cast2 = Cast.new
Cast2["movie_id"] = "Batman Begins"
Cast2["actor_id"] = "Michael Caine"
Cast2["character_name"] = "Alfred"
Cast2.save

Cast3 = Cast.new
Cast3["movie_id"] = "Batman Begins"
Cast3["actor_id"] = "Liam Neeson"
Cast3["character_name"] = "Ra's Al Ghul"
Cast3.save

Cast4 = Cast.new
Cast4["movie_id"] = "Batman Begins"
Cast4["actor_id"] = "Katie Holmes"
Cast4["character_name"] = "Rachel Dawes"
Cast4.save

Cast5 = Cast.new
Cast5["movie_id"] = "Batman Begins"
Cast5["actor_id"] = "Gary Oldman"
Cast5["character_name"] = "Commissioner Gordon"
Cast5.save

Cast6 = Cast.new
Cast6["movie_id"] = "The Dark Knight"
Cast6["actor_id"] = "Christian Bale"
Cast6["character_name"] = "Bruce Wayne"
Cast6.save

Cast7 = Cast.new
Cast7["movie_id"] = "The Dark Knight"
Cast7["actor_id"] = "Heath Ledger"
Cast7["character_name"] = "Joker"
Cast7.save

Cast8 = Cast.new
Cast8["movie_id"] = "The Dark Knight"
Cast8["actor_id"] = "Aaron Eckhart"
Cast8["character_name"] = "Harvey Dent"
Cast8.save

Cast9 = Cast.new
Cast9["movie_id"] = "The Dark Knight"
Cast9["actor_id"] = "Michael Caine"
Cast9["character_name"] = "Alfred"
Cast9.save

Cast10 = Cast.new
Cast10["movie_id"] = "The Dark Knight"
Cast10["actor_id"] = "Maggie Gyllenhaal"
Cast10["character_name"] = "Rachel Dawes"
Cast10.save

Cast11 = Cast.new
Cast11["movie_id"] = "The Dark Knight Rises"
Cast11["actor_id"] = "Christian Bale"
Cast11["character_name"] = "Bruce Wayne"
Cast11.save

Cast12 = Cast.new
Cast12["movie_id"] = "The Dark Knight Rises"
Cast12["actor_id"] = "Gary Oldman"
Cast12["character_name"] = "Commissioner Gordon"
Cast12.save

Cast13 = Cast.new
Cast13["movie_id"] = "The Dark Knight Rises"
Cast13["actor_id"] = "Tom Hardy"
Cast13["character_name"] = "Bane"
Cast13.save

Cast14 = Cast.new
Cast14["movie_id"] = "The Dark Knight Rises"
Cast14["actor_id"] = "Joseph Gordon-Levitt"
Cast14["character_name"] = "John Blake"
Cast14.save

Cast15 = Cast.new
Cast15["movie_id"] = "The Dark Knight Rises"
Cast15["actor_id"] = "Anne Hathaway"
Cast15["character_name"] = "Selina Kyle"
Cast15.save

for Cast in casts
    movie_id = Cast["movie_id"]
    actor_id = Cast["actor_id"]
    character_name = Cast["character_name"]

    puts "#{movie_id}, #{actor_id}, #{character_name}"

end
