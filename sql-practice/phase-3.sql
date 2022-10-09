-- Find Hermione's cats
-- Your code here
SELECT cats.name from cats 
JOIN cat_owners on cat_owners.cat_id =cats.id
JOIN owners on cat_owners.owner_id=owners.id AND owners.first_name="Hermione";


-- Find All the Toys for Hermione's cats
-- Your code here

SELECT toys.name from toys 
JOIN cat_owners on cat_owners.cat_id =cats.id
JOIN owners on owners.id = cat_owners.id and owners.first_name="Hermione"
JOIN toys on cats.id=toys.cat_id;


