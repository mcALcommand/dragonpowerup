#
execute as @e[type=end_crystal,limit=1,sort=nearest] run scoreboard players remove @s endcrystal_blockcount 1

#
data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
tag @s add blocked

#
execute at @s run function enderdragon:entity/end_crystal/projectile_particle
execute positioned ~ ~1 ~ facing entity @s feet run function enderdragon:entity/end_crystal/projectile_particle_beam
