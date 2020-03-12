/*What is each pokemons primary type?*/
  select types.name, pokemons.name
  from types
  inner join pokemons
  on types.id = pokemons.primary_type;

/*What is Rufflets secondary type?*/
  select types.name, pokemons.name
  from types
  inner join pokemons
  on types.id = pokemons.secondary_type;

/*What are the names of the pokemon that belong to the trainer with trainerID 303?*/
  select pokemons.name
  from pokemons
  inner join pokemon_trainer
  on pokemons.id = pokemon_trainer.pokemon_id where trainerID = 303;

/*How many pokemon have a secondary type Poison?*/
  select count(*)
  from pokemons
  where secondary_type = 7;

/*What are all the primary types and how many pokemon have that type?*/
  select types.name, count(*)
  from types, pokemons
  where types.id = pokemons.primary_type
  group by types.name;

/*How many pokemons at level 100 does each trainer with at least one level 100
pokemon have? (Hint: your query should not display a trainer)*/
  select trainers.trainername, count(*)
  from pokemon_trainer, trainers
  where pokelevel = 100
  and pokemon_trainer.trainerID = trainers.trainerID
  group by trainers.trainerID;

/*How many pokemon only belong to one trainer and no other?*/
    select pokemon_id
    from pokemon_trainer
    group by pokemon_id
    having count(*) = 1;
