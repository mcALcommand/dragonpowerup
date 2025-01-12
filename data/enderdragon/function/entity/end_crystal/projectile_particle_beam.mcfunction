#
particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless entity @s[distance=..0.1] positioned ^ ^ ^0.1 run function enderdragon:entity/end_crystal/projectile_particle_beam