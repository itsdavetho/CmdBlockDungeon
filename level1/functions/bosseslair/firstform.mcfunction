# some particles
execute unless entity @e[name="Bartok the Fish"] run particle minecraft:smoke 4826 4 -3542 2 2 2 1 200
execute unless entity @e[name="Bartok the Fish"] run playsound minecraft:item.firecharge.use player @a[x=4820,dx=22,y=1,dy=6,z=-3552,dz=22] 4826 4 -3542 1 0.5 1
execute unless entity @e[name="Bartok the Fish"] run scoreboard players set @a[x=4820,dx=22,y=1,dy=6,z=-3552,dz=22] level1boss 1
execute unless entity @e[name="Bartok the Fish"] run tellraw @a[x=4820,dx=22,y=1,dy=6,z=-3552,dz=22] "The ancient being Bartok appears... in the form of a fish??"

execute unless entity @e[name="Bartok the Fish"] run summon guardian 4826 4 -3542 {PersistenceRequired:1,CustomName:"\"Bartok the Fish\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999},{Id:5,Amplifier:1,Duration:999999},{Id:8,Amplifier:0,Duration:999999},{Id:10,Amplifier:1,Duration:999999},{Id:21,Amplifier:0,Duration:999999}]}

stopsound @a[x=4820,dx=22,y=1,dy=6,z=-3552,dz=22]
playsound minecraft:music.end player @a[x=4820,dx=22,y=1,dy=6,z=-3552,dz=22]

# remove the button that spawns him
setblock 4831 4 -3542 air

# initiate the boss tick
execute as @s run function level1:bosseslair/bosstick