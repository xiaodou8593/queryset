#queryset:remove/next

say ???
$execute store result score res int if data storage queryset:io set."$(uuid)"
tellraw @a ["res: ",{"score":{"name":"res","objective":"int"}}]

# 在集合中才移除元素
execute if score res int matches 0 run return 0

scoreboard players remove queryset_cnt int 1
$data remove storage queryset:io set."$(uuid)"

# 查找元素并移除
$data modify storage queryset:io string set value "$(uuid)"
scoreboard players operation queryset_loop int = queryset_cnt int
function queryset:remove/loop