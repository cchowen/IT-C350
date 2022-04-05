CREATE OR REPLACE VIEW character_edit AS

SELECT "CHARACTER".character_name, "CHARACTER".total_level, "CLASS".class_name, "CLASS".subclass, "CHARACTER_SPECIALIZATIONS".level, "CHARACTER".hitpoints, 
"CHARACTER".strength, "CHARACTER".charisma, "CHARACTER".wisdom, "CHARACTER".intelligence, "CHARACTER".constitution, "CHARACTER".dexterity, 
"RACE".race_name, "PARTY".party_name, "USER".username
FROM "USER"
INNER JOIN "CHARACTER" on "CHARACTER".user_id = "USER".user_id
INNER JOIN "PARTY" on "PARTY".party_id = "CHARACTER".party_id
INNER JOIN "RACE" on "RACE".race_id = "CHARACTER".race_id
INNER JOIN "CHARACTER_SPECIALIZATIONS" on "CHARACTER".char_id = "CHARACTER_SPECIALIZATIONS".char_id
INNER JOIN "CLASS" on "CLASS".class_id = "CHARACTER_SPECIALIZATIONS".class_id