# graveyard miniboss

# make some particles
execute unless entity @e[name="Sir Garzon"] run particle minecraft:smoke 4843 7 -3566 2 2 2 1 200

# play a sound
execute unless entity @e[name="Sir Garzon"] run playsound minecraft:block.end_portal.spawn block @s 4843 7 -3566 1 0.1 1

# summon him
execute unless entity @e[name="Sir Garzon"] run summon zombie_pigman 4843 7 -3566 {Rotation:[-159.7f,39.3f], Anger:1000,CanPickUpLoot:1b,HandItems:[{Count:1,id:diamond_sword,tag:{Enchantments:[{id:sharpness,lvl:1},{id:knockback,lvl:1},{id:unbreaking,lvl:3}]}},{Count:1,id:trident,tag:{garzonstrident: 1, display:{Name:"\"Sir Garzon's Trident of Reveal\"",Lore:["\"This trident will help you on your way.\""]},Enchantments:[{id:unbreaking,lvl:3},{id:loyalty,lvl:3},{id:riptide,lvl:3}]}}],ArmorItems:[{Count:1,id:diamond_boots},{Count:1,id:diamond_leggings},{Count:1,id:diamond_chestplate},{Count:1,id:diamond_helmet}],CustomName:"\"Sir Garzon\"",HandDropChances:[0.0f,1.0f],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:11,Amplifier:0,Duration:999999},{Id:21,Amplifier:0,Duration:999999}]}

# queue coffin close (hopefully preventing him from immediately spawning again)
execute run schedule function graveyard:closecoffin 3s