# teleport him away so we dont see his dying animation
tp @e[name="Tiernan"] ~ ~-200 ~
kill @e[name="Tiernan"]
particle minecraft:smoke 4860 15 -3510 1 1 1 1 100
playsound minecraft:entity.evoker.prepare_summon block @s 4860 16 -3510 1 1 1

# turn off the lights
fill 4859 14 -3509 4860 14 -3509 minecraft:air

#open the door
setblock 4857 17 -3509 minecraft:spruce_door[facing=east,half=upper,hinge=left,open=false,powered=false]
setblock 4857 16 -3509 minecraft:spruce_door[facing=east,half=lower,hinge=left,open=false,powered=false]