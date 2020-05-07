stopsound @s
playsound minecraft:music.nether player @a[x=4809, y=12, z=-3526, dx= 4, dy=2, dz=4]
playsound minecraft:block.note_block.chime player @a[x=4809, y=12, z=-3526, dx= 4, dy=2, dz=4] ~ ~ ~ 1 0.1 1
give @s nether_star{unholysymbol: 1, display:{Name:"[{\"text\":\"Unholy Symbol\",\"italic\":false}]",Lore:["[{\"text\":\"It's making strange noises..\",\"italic\":false}]"]}} 1
# #ADDMYTHICMOBS
execute as @s run summon zombie ~-3 ~ ~-5
execute as @s run summon zombie ~-2 ~ ~-5
execute as @s run summon zombie ~-1 ~ ~-5
execute if entity @s[nbt= { Inventory: [ { tag: {unholysymbol:1}  } ] }] run tellraw @s "What's this mysterious symbol?.. It must have some use..."
execute unless entity @s[nbt= { Inventory: [ { tag: {unholysymbol:1}  } ] }] run tellraw @s "My inventory is too full..."
# turn the button off so it wont spam dialogues
setblock 4811 13 -3523 minecraft:stone_button[powered=false]