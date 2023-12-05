#queryset:_print
# 临时对象
# 输出信息

tellraw @a ["--queryset---"]
tellraw @a ["queryset_cnt: ",{"score":{"name":"queryset_cnt","objective":"int"}}]
execute if score queryset_gc int matches 0 run tellraw @a "gc: off"
execute if score queryset_gc int matches 1 run tellraw @a "gc: on"

# 循环输出所有对象的名字
data modify storage queryset:io temp_string set value "list_elements: "
data modify storage queryset:io temp_strings set from storage queryset:io set_keys
execute if data storage queryset:io temp_strings[0] as 0-0-0-8593-1 run function queryset:print/loop
tellraw @a {"nbt":"temp_string","storage":"queryset:io"}