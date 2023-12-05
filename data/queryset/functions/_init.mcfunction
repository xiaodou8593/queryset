#queryset:_init

# 建立记分板
scoreboard objectives add int dummy
scoreboard objectives add queryset_gc dummy
scoreboard objectives add queryset_id dummy
scoreboard objectives add queryset_cnt dummy

# 主世界初始化操作
execute in minecraft:overworld run function queryset:init_overworld

# 清除选择集
tag @e[tag=queryset_be] remove queryset
tag @e[tag=queryset_be] remove queryset_be
kill @e[tag=queryset]

# 编号池
scoreboard players set #id queryset_id 0
data modify storage queryset:io free_addr set value []

# 执行队列
scoreboard players set queryset_running int 0
data modify storage queryset:io list_run set value []
data modify storage queryset:io run_params set value {run:""}