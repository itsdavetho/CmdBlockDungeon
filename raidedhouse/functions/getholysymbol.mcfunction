stopsound @s
playsound minecraft:music.nether music @s
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 0.1 1
tellraw @s "You receive a mysterious symbol.. It must have some use..."
give @s nether_star{unholysymbol: 1, display:{Name:"[{\"text\":\"Unholy Symbol\",\"italic\":false}]",Lore:["[{\"text\":\"It's making strange noises..\",\"italic\":false}]"]}} 1
execute as @s run function summon zombie ~-1 ~3 ~
execute as @s run function summon zombie ~-2 ~3 ~
execute as @s run function summon zombie ~ ~3 ~