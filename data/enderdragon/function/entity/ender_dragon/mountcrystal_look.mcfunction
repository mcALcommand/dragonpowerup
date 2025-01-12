#
execute as @e[type=end_crystal,tag=mount_crystal,distance=..2,sort=nearest,limit=1] on vehicle run scoreboard players remove @s endcrystal_ridecount 30
execute at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1