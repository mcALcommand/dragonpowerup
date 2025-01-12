#エンドクリスタル
execute as @e[type=end_crystal,nbt={ShowBottom:true}] at @s run function enderdragon:entity/end_crystal/tick
#エンダードラゴン
execute as @e[type=ender_dragon,tag=!setted_dragon] at @s run function enderdragon:entity/ender_dragon/enderdragon_set

execute as @e[type=ender_dragon,tag=mounting_crystal] at @s unless data entity @s Passengers run function enderdragon:entity/ender_dragon/endcrystal_break
execute as @e[type=ender_dragon] if data entity @s Passengers if score @s endcrystal_ridecount matches ..0 on passengers run damage @s 1 generic

execute as @e[type=ender_dragon] unless score @s endcrystal_ridecount matches 1800.. run scoreboard players add @s endcrystal_ridecount 1
execute as @e[type=ender_dragon] at @s unless data entity @s Passengers if score @s endcrystal_ridecount matches 1800.. run function enderdragon:entity/ender_dragon/endcrystal_set
execute as @e[type=ender_dragon,limit=1] at @s if dimension minecraft:the_end store result bossbar dragon_crystal value run scoreboard players get @s endcrystal_ridecount

#バー
execute in minecraft:the_end if entity @e[type=ender_dragon] positioned 0 192 0 as @a[distance=..180] run bossbar set dragon_crystal players @s
execute as @a in minecraft:the_end positioned 0 192 0 if entity @s[distance=180..] run bossbar set dragon_crystal players @s[type=!player]
execute as @a in minecraft:the_end unless entity @e[type=ender_dragon] run bossbar set dragon_crystal players @s[type=!player]

#マウントクリスタル
execute as @e[type=end_crystal,tag=mount_crystal] at @s as @a[distance=..128] at @s anchored eyes positioned ^ ^ ^1 run function enderdragon:entity/ender_dragon/mountcrystal_looking

#ドラゴンファイアボール
execute as @e[type=area_effect_cloud,nbt={RadiusPerTick:0.006666667f,Particle:{type:"minecraft:dragon_breath"}}] at @s if entity @a[distance=..128] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run tp @s ^ ^ ^0.1
#ドラゴンブレス
execute as @e[type=area_effect_cloud,nbt={RadiusPerTick:0f,Particle:{type:"minecraft:dragon_breath"}}] at @s run data merge entity @s {RadiusPerTick:0.006666667f}