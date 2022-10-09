-- Find the first owner that has a last name containing the lowercase letter "r"
-- Your code here
SELECT
  owners.first_name,
  owners.last_name
FROM
  owners
  JOIN cat_owners on cat_owners.owner_id = owners.id
  AND owners.last_name like "%r%"
LIMIT
  1;

-- Find the name and birth year of all the cats ordered by descending birth year
-- Your code here
SELECT
  cats.name,
  cats.birth_year
FROM
  cats
ORDER by
  cats.birth_year DESC;

-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT
  cats.name
FROM
  cats
  JOIN cat_owners on cat_owners.cat_id = cats.id
  JOIN owners on owners.id = cat_owners.owner_id
  AND owners.first_name like "H%";

-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
SELECT
  owners.first_name,
  owners.last_name
FROM
  owners
  JOIN cat_owners on cat_owners.owner_id = owners.id
  JOIN cats on cats.birth_year > 2015
  AND cats.id = cat_owners.cat_id;

-- Find names of the cats whose owners are both George Beatty 
-- and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT
  cats.name
FROM
  cats
  JOIN cat_owners on cat_owners.cat_id = cats.id
  JOIN owners on owners.id = cat_owners.owner_id
  AND (
    first_name in ("Melynda", "George")
    AND last_name in ("Abshire", "Beatty")
  );