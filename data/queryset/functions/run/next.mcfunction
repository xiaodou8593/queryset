#queryset:run/next

$data modify storage queryset:io uuid set value $(string)
data modify entity @s Thrower set from storage queryset:io uuid
execute on origin run function queryset:list_run/execute_append

execute if score queryset_gc int matches 0 run return 0
execute if score sres int matches 1 run return 0
execute on origin run return 0

# 找不到指针实体，且区块已加载，认定实体死亡，清理
$data modify entity @s Pos set from storage queryset:io set."$(string)".position
execute at @s if loaded ~ ~ ~ run scoreboard players set sres int -1
execute if score sres int matches -1 run scoreboard players remove queryset_cnt int 1
$execute if score sres int matches -1 run data remove storage queryset:io set."$(string)"
tp @s 0 -67 0