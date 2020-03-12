//Part 4
//ORDERED FROM HIGHEST LEVEL THEN PRIMARY TYPE THEN SUBTYPE DESCEDING.
//CAME OUT WITH ARTICUNO AT THE TOP WHICH IS A LEGENDARY SO IM SATISFIED.
  select
  t.trainername as trainer_name,
  p.name as pokemon_name,
  pt.pokelevel as level,
  p.primary_type as type,
  p.secondary_type as sub_type
  from pokemons as p, pokemon_trainer as pt, trainers as t
  where p.id = pt.pokemon_id and pt.trainerID = t.trainerID
  order by level desc, type desc, sub_type desc nulls last;
