/*Part 4
  ORDERED FROM HIGHEST BASED ON ATT, SPA, SPD TOTAL.*/
  select (attack + spatk + speed) as AttSpaSpd,
  t.trainername as trainer_name,
  p.name as pokemon_name,
  pt.pokelevel as level,
  ptype.name as type,
  stype.name as sub_type
  from pokemons as p
  join pokemon_trainer as pt
  on p.id = pt.pokemon_id
  join trainers as t
  on pt.trainerID = t.trainerID
  right join types as ptype
  on p.primary_type = ptype.id
  left join types as stype
  on p.secondary_type = stype.id
  order by AttSpaSpd desc;
