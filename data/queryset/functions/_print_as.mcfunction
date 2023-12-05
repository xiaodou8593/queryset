#queryset:_print_as
# 临时对象
# 输出信息

tellraw @a ["--queryset: ",{"nbt":"data.name","entity":"@s"},"---"]
tellraw @a ["queryset_cnt: ",{"score":{"name":"@s","objective":"queryset_cnt"}}]
execute if score @s queryset_gc matches 0 run tellraw @a "gc: off"
execute if score @s queryset_gc matches 1 run tellraw @a "gc: on"

# 循环输出所有对象的名字
data modify storage queryset:io temp_string set value "list_elements: "
data modify storage queryset:io temp_strings set from entity @s data.queryset_keys
execute if data storage queryset:io temp_strings[0] as 0-0-0-8593-1 run function queryset:print/loop
tellraw @a {"nbt":"temp_string","storage":"queryset:io"}