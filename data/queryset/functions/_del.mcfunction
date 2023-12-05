#queryset:_del

# 删除静态数据
function queryset:set/del_class with entity @s data

# 放回编号
data modify storage queryset:io free_addr append value 0
execute store result storage queryset:io free_addr[-1] int 1 run scoreboard players get @s queryset_id

# 删除实体
execute if entity @s[tag=queryset_be] run tag @s remove queryset
tag @s remove queryset_be
kill @s[tag=queryset]