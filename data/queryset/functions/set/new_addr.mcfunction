#queryset:set/new_addr

# 生成新编号
data modify storage queryset:io free_addr append value 0
execute store result storage queryset:io free_addr[-1] int 1 run scoreboard players add #id queryset_id 1