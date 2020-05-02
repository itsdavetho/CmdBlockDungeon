execute unless entity @e[name="Bartok the Illusioner"] run summon illusioner 4830 3 -3543 {PersistenceRequired:1,CustomName:"\"Bartok the Illusioner\"",ActiveEffects:[{Id:2,Amplifier:0,Duration:999999},{Id:5,Amplifier:0,Duration:999999},{Id:21,Amplifier:0,Duration:999999},{Id:22,Amplifier:0,Duration:999999}]}
execute unless entity @e[name="Bartok the Illusioner"] run particle minecraft:smoke 4830 3 -3543 2 2 2 1 200
execute unless entity @e[name="Bartok the Illusioner"] run playsound minecraft:block.end_portal.spawn player @s 4830 3 -3543 1 2 1
execute unless entity @e[name="Bartok the Illusioner"] run tellraw @s "Bartok is losing his power! Strike him down quickly!"
execute unless entity @e[name="Bartok the Illusioner"] run scoreboard players set @s level1boss 3