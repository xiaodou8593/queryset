#queryset:append/next

$execute store result score res int if data storage queryset:io set."$(uuid)"

# 不在集合中才添加元素
execute if score res int matches 1 run return 0
scoreboard players add queryset_cnt int 1
$data modify storage queryset:io set."$(uuid)".position set from entity @s Pos
$data modify storage queryset:io set_keys append value "$(uuid)"