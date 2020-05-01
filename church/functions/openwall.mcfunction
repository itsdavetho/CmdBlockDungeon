# play a sound
execute if block 4865 17 -3527 iron_block run playsound minecraft:entity.lightning_bolt.thunder player @p ~ ~ ~ 0.5 0.1 0.5

# make some particles
execute if block 4865 17 -3527 iron_block run particle minecraft:explosion 4865 15 -3526 2 2 2 1 10

# remove the wall
execute if block 4865 17 -3527 iron_block run fill 4865 17 -3527 4865 15 -3525 air replace

# reset the chest
data modify block 4866 12 -3527 Items set value []

# add decoy loot in straight ahead chest 
data modify block 4862 15 -3526 Items set value [{Slot:0,id:iron_ingot,Count:2},{Slot:1,id:stone_sword,Count:1,tag:{Enchantments:[{id:sharpness,lvl:1},{id:looting,lvl:1}]}},{Slot:2,id:cooked_porkchop,Count:2}, {Slot: 3, id: potion, tag: {Potion: "minecraft:healing"} } ]

# command block
# execute if block 4867 16 -3528 #minecraft:buttons[powered=true] if block 4866 12 -3527 minecraft:chest{Items:[{ tag: {unholysymbol:1} }]} run function church:openwall