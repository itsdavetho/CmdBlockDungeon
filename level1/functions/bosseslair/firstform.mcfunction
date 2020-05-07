# some particles
execute unless entity @e[name="Bartok the Fish"] run particle minecraft:smoke 4826 4 -3542 2 2 2 1 200
execute unless entity @e[name="Bartok the Fish"] run playsound minecraft:item.firecharge.use player @s 4826 4 -3542 1 0.5 1
execute unless entity @e[name="Bartok the Fish"] run scoreboard players set @s level1boss 1
execute unless entity @e[name="Bartok the Fish"] run tellraw @s "The ancient being Bartok appears... in the form of a fish??"

execute unless entity @e[name="Bartok the Fish"] run summon guardian 4826 4 -3542 {PersistenceRequired:1,CustomName:"\"Bartok the Fish\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999},{Id:5,Amplifier:1,Duration:999999},{Id:8,Amplifier:0,Duration:999999},{Id:10,Amplifier:1,Duration:999999},{Id:21,Amplifier:0,Duration:999999}]}

stopsound @s
playsound minecraft:music.end player @s

# remove the button that spawns him
setblock 4831 4 -3542 air