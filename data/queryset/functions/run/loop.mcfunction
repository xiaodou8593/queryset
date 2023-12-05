#queryset:run/loop

# 指针对应的实体执行命令
scoreboard players set sres int 0
data modify storage queryset:io string set from storage queryset:io set_keys[0]
function queryset:run/next with storage queryset:io {}

# 循环迭代
execute if score sres int matches 0.. run data modify storage queryset:io set_keys append from storage queryset:io set_keys[0]
data remove storage queryset:io set_keys[0]
scoreboard players remove queryset_loop int 1
execute if score queryset_loop int matches 1.. run function queryset:run/loop