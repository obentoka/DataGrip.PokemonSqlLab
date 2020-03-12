/*What are all the types of pokemon that a pokemon can have?*/
  select *
  from types;

/*What is the name of the pokemon with id 45?*/
  select name
  from pokemons
  where id = 45;

/*How many pokemon are there?*/
  select count(id)
  from pokemons;

/*How many types are there?*/
  select count(id)
  from types;

/*How many pokemon have a secondary type?*/
  select *
  from pokemons
  where secondary_type is not null;