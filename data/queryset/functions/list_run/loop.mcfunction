#queryset:list_run/loop

# 执行命令
data modify storage queryset:io run_params set from storage queryset:io list_run[0]
data modify entity @s Thrower set from storage queryset:io run_params.__uuid__
execute on origin run function queryset:list_run/execute with storage queryset:io run_params

# 循环迭代
data remove storage queryset:io list_run[0]
execute unless data storage queryset:io list_run[0] store result score queryset_running int run return 0
function queryset:list_run/loop