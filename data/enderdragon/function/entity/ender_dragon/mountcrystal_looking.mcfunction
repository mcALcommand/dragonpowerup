#
execute if entity @e[type=end_crystal,tag=mount_crystal,distance=..2] run function enderdragon:entity/ender_dragon/mountcrystal_look
execute if entity @s[distance=..128] unless entity @e[type=end_crystal,tag=mount_crystal,distance=..2] positioned ^ ^ ^1 run function enderdragon:entity/ender_dragon/mountcrystal_looking
