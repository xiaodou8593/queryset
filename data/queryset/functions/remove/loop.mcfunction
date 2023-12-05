#queryset:remove/loop

# NBT比对确定元素
data modify storage queryset:io temp_cmp set from storage queryset:io set_keys[0]
execute store success score sres int run data modify storage queryset:io temp_cmp set from storage queryset:io string

# 循环迭代
execute if score sres int matches 0 run scoreboard players set queryset_loop int 1
execute if score sres int matches 1 run data modify storage queryset:io set_keys append from storage queryset:io set_keys[0]
data remove storage queryset:io set_keys[0]
scoreboard players remove queryset_loop int 1
execute if score queryset_loop int matches 1.. run function queryset:remove/loop