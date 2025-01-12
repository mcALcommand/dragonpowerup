#
tag @s remove mounting_crystal
damage @s 150 generic by @p
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @a[distance=..128] at @s run playsound entity.generic.explode hostile @s ~ ~ ~
scoreboard players set @s endcrystal_ridecount 0