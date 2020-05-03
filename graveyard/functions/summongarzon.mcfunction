# graveyard miniboss

# make some particles
run particle minecraft:smoke 4843 7 -3566 2 2 2 1 200

# play a sound
run playsound minecraft:block.end_portal.spawn block @s 4843 7 -3566 1 0.1 1

# make some spiders (the coffin was full of em)
run summon minecraft:cave_spider 4842 6 -3568 {CustomName:"\"Garzon's Pal\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999}]}
run summon minecraft:cave_spider 4844 6 -3563 {CustomName:"\"Garzon's Pal\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999}]}
run summon minecraft:cave_spider 4841 6 -3565 {CustomName:"\"Garzon's Pal\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999}]}
run summon minecraft:cave_spider 4847 6 -3564 {CustomName:"\"Garzon's Pal\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999}]}
run tellraw @s "His coffin was full of POISON SPIDERS! Ahhhh!!!!!!!"

# summon him
run summon zombie_pigman 4843 7 -3566 {Rotation:[-159.7f,39.3f], Anger:1000,CanPickUpLoot:1b,HandItems:[{Count:1,id:diamond_sword,tag:{Enchantments:[{id:sharpness,lvl:1},{id:knockback,lvl:1},{id:unbreaking,lvl:3}]}},{Count:1,id:trident,tag:{garzonstrident: 1, display:{Name:"\"Sir Garzon's Trident of Reveal\"",Lore:["\"This trident will help you on your way.\""]},Enchantments:[{id:unbreaking,lvl:3},{id:loyalty,lvl:3},{id:riptide,lvl:3}]}}],ArmorItems:[{Count:1,id:diamond_boots},{Count:1,id:diamond_leggings},{Count:1,id:diamond_chestplate},{Count:1,id:diamond_helmet}],CustomName:"\"Sir Garzon\"",HandDropChances:[0.0f,1.0f],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:11,Amplifier:0,Duration:999999},{Id:21,Amplifier:0,Duration:999999}]}
run scoreboard players set @s garzonkilled 2

# queue coffin close
execute run schedule function graveyard:closecoffin 3s


# command block
# execute unless score @s garzonkilled matches 2 .........
# execute unless entity @e[name="Sir Garzon"] unless score @s garzonkilled matches 2 if block 4845 7 -3566 minecraft:spruce_trapdoor[open=true] as @a[x=4840,y=5,z=-3574,dx=9,dy=4,dz=13] run function graveyard:opencoffin