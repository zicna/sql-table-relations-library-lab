def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  sql = <<-SQL
    SELECT books.title, books.year
    FROM books
    --WHERE id= (SELECT MIN(id) FROM books);
    WHERE books.series_id = 1;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  sql = <<-SQL
    SELECT characters.name, characters.motto
    FROM characters
    ORDER BY (length(characters.motto)) DESC
    LIMIT 1;
    SQL
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  sql = <<-SQL
   SELECT characters.species, COUNT(characters.species)
   FROM characters
   GROUP BY characters.species
   ORDER BY COUNT(characters.species) DESC
   LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  sql = <<-SQL
    SELECT authors.name, subgenres.name
    FROM authors
    INNER JOIN subgenres
    ON authors.id = subgenres.id;
  SQL
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  sql = <<-SQL
    SELECT series.title
    FROM series
    INNER JOIN characters
    ON series.author_id = characters.author_id
    GROUP BY characters.species
    ORDER BY COUNT(characters.species)
    LIMIT 1;
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  sql = <<-SQL
    SELECT characters.name, COUNT(character_books.character_id)
    FROM characters
    INNER JOIN character_books
    ON characters.id = character_books.character_id
    GROUP BY characters.name
    ORDER BY COUNT(character_books.character_id) DESC, characters.name ASC;
    --ORDER BY characters.name ASC;

  SQL
end
