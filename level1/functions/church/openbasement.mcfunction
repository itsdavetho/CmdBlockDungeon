# turn the button off so it doesnt cycle this process again immediately
setblock 4875 21 -3530 stone_button[face=wall,facing=west,powered=false]
#open the basement stair case:
#play sound
execute if block 4872 19 -3522 cobblestone run playsound minecraft:entity.zombie.attack_iron_door block @s 4870 14 -3523
# open floor 
fill 4872 19 -3522 4875 19 -3523 air replace
# and make the staircase  -- 5 steps -- animate this later 
execute if block 4875 19 -3523 air run fill 4875 19 -3523 4875 19 -3522 minecraft:cobblestone_stairs[facing=east]
execute if block 4874 18 -3523 air run fill 4874 18 -3523 4874 18 -3522 minecraft:cobblestone_stairs[facing=east]
execute if block 4873 17 -3523 air run fill 4873 17 -3523 4873 17 -3522 minecraft:cobblestone_stairs[facing=east]
execute if block 4872 16 -3523 air run fill 4872 16 -3523 4872 16 -3522 minecraft:cobblestone_stairs[facing=east]
execute if block 4871 15 -3523 air run fill 4871 15 -3523 4871 15 -3522 minecraft:cobblestone_stairs[facing=east]
# command block
# execute if block 4872 19 -3522 cobblestone if block 4875 21 -3530 button[powered=true] run function level1:church/openbasement