# play some sound
execute as @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] run stopsound @s
execute as @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] run playsound minecraft:music_disc.11 player @s
execute as @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] run playsound minecraft:entity.evoker.prepare_summon block @s 4860 16 -3510 1 2 1
# make some smoke
particle minecraft:smoke 4860 16 -3510 2 2 2 1 200
# summon him - can we #ADDMYTHICMOBS some how ? i mean can we just make him cooler 
summon villager 4860 16 -3510 {VillagerData:{profession:toolsmith,level:5,type:plains},Invulnerable:1,Silent:1,NoAI:1,Rotation:[22.4f,11.7f],CustomName:"\"Tiernan\"",ActiveEffects:[{Id:24,Amplifier:0,Duration:999999}]}
tellraw @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] "The ghost of Tiernan the Toolman appears... He does not appear dangerous... He looks like he's about to say something"