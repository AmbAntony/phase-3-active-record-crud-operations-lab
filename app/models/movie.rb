class Movie < ActiveRecord::Base

# attr_accessor :title, :release_year, :director, :lead, :in_theaters

  # Instantiate a new movie with a title and save it to the database
  def self.create_with_title(title)
    movie = Movie.create(title: title)
    movie.save
    movie
  end

  # Return the first item in the table
  def self.first_movie
    Movie.first
  end

  # Return the last item in the table
  def self.last_movie
    Movie.last
  end

  # Return the number of records in the table
  def self.movie_count
    Movie.count
  end

  # Return a movie from the table based on its id with the .find method
  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  # Return a movie from the table based on its attributes with the .find_by method
  def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end

  # Use a .where clause to select the appropriate movies released after 2002
  def self.find_movies_after_2002
    Movie.where("release_date > 2002")
  end

  # Update a single movie using the #update method
  def update_with_attributes(attribute)
    self.update(attribute)
    save
  end

  # Update the title of all records at once using the .update method
  def self.update_all_titles(title)
    Movie.update(title: title)
  end

  # Delete a single item with the #destroy method
  def self.delete_by_id(id)
    Movie.destroy(id)
  end

  # Delete all items at once with the .destroy_all method
  def self.delete_all_movies
    Movie.destroy_all
  end
end
