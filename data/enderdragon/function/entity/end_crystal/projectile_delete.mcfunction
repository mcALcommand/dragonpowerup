#
execute as @e[type=end_crystal,limit=1,sort=nearest] run scoreboard players remove @s endcrystal_blockcount 1
#
kill @s
#
execute at @s run function enderdragon:entity/end_crystal/projectile_particle
execute positioned ~ ~1 ~ facing entity @s feet run function enderdragon:entity/end_crystal/projectile_particle_beam
