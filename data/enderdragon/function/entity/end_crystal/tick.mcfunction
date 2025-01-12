#エンドクリスタル
execute if score @s endcrystal_blockcount matches 1.. run particle trial_spawner_detection_ominous ~ ~ ~ 2.5 2.5 2.5 0 5 force
execute unless score @s endcrystal_blockcount matches 3.. run scoreboard players add @s endcrtstal_regencount 1
execute if score @s endcrtstal_regencount matches 200.. run function enderdragon:entity/end_crystal/can_block_add

#飛翔体を消す
execute if score @s endcrystal_blockcount matches 1.. as @e[type=#enderdragon:projectile,nbt=!{Motion:[0.0d,0.0d,0.0d]},distance=..8] run function enderdragon:entity/end_crystal/projectile_delete
execute if score @s endcrystal_blockcount matches 1.. as @e[type=minecraft:trident,tag=!blocked,distance=..8] run function enderdragon:entity/end_crystal/projectile_trident
