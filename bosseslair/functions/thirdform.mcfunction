execute unless entity @e[name="Bartok the Illusioner"] run particle minecraft:smoke 4830 3 -3543 2 2 2 1 200
execute unless entity @e[name="Bartok the Illusioner"] run playsound minecraft:block.end_portal.spawn player @s 4830 3 -3543 1 2 1
execute unless entity @e[name="Bartok the Illusioner"] run tellraw @s "Bartok is losing his power! Strike him down quickly!"
execute unless entity @e[name="Bartok the Illusioner"] run scoreboard players set @s level1boss 3

execute unless entity @e[name="Bartok the Illusioner"] run summon zombie_villager 4826 3 -3536 {HandItems:[{Count:1,id:bow,tag:{Enchantments:[{id:unbreaking,lvl:3},{id:power,lvl:5},{id:punch,lvl:2},{id:flame,lvl:1},{id:infinity,lvl:1}]}},{}],CustomName:"\"Bartok's Zombie\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999},{Id:5,Amplifier:1,Duration:999999},{Id:8,Amplifier:0,Duration:999999},{Id:10,Amplifier:1,Duration:999999}]}
execute unless entity @e[name="Bartok the Illusioner"] run summon skeleton 4836 3 -3536 {PersistenceRequired:1,HandItems:[{Count:1,id:iron_sword},{Count:1,id:shield}],ArmorItems:[{Count:1,id:iron_boots,tag:{Enchantments:[{id:thorns,lvl:3}]}},{Count:1,id:iron_leggings},{Count:1,id:iron_chestplate},{Count:1,id:iron_helmet}],CustomName:"\"Bartok's Skelly\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999}]}
execute unless entity @e[name="Bartok the Illusioner"] run summon zombie 4826 3 -3548 {HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:sharpness,lvl:5}]}},{}],ArmorItems:[{},{},{Count:1,id:diamond_chestplate},{}],CustomName:"\"Bartok's Zombie\"",ActiveEffects:[{Id:1,Amplifier:1,Duration:999999},{Id:5,Amplifier:1,Duration:999999},{Id:21,Amplifier:0,Duration:999999},{Id:22,Amplifier:0,Duration:999999}]}
execute unless entity @e[name="Bartok the Illusioner"] run summon creeper 4836 3 -3548 {CustomName:"\"Bartok's Creeper\"",ActiveEffects:[{Id:2,Amplifier:0,Duration:999999},{Id:28,Amplifier:0,Duration:999999}]}

execute unless entity @e[name="Bartok the Illusioner"] run particle minecraft:smoke 4826 3 -3536 2 2 2 1 100
execute unless entity @e[name="Bartok the Illusioner"] run particle minecraft:smoke 4836 3 -3536 2 2 2 1 100
execute unless entity @e[name="Bartok the Illusioner"] run particle minecraft:smoke 4826 3 -3548 2 2 2 1 100
execute unless entity @e[name="Bartok the Illusioner"] run particle minecraft:smoke 4836 3 -3548 2 2 2 1 100

execute unless entity @e[name="Bartok the Illusioner"] run summon illusioner 4830 3 -3543 {PersistenceRequired:1,CustomName:"\"Bartok the Illusioner\"",ActiveEffects:[{Id:2,Amplifier:0,Duration:999999},{Id:5,Amplifier:0,Duration:999999},{Id:21,Amplifier:0,Duration:999999},{Id:22,Amplifier:0,Duration:999999}]}