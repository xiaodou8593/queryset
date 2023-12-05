#queryset:_or
# 临时对象
# 输入<@s>对临时对象进行求差

# 把<ssobj>作为遍历者
data modify storage queryset:io temp_elms set from storage queryset:io set
data modify storage queryset:io temp_strings set from storage queryset:io set_keys

# 把<@s>的作为被判断者
data modify storage queryset:io temp_set set from entity @s data.queryset

# 清空临时对象
scoreboard players set queryset_cnt int 0
data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []

# 进入循环遍历元素
execute if data storage queryset:io temp_strings[-1] run function queryset:differ/loop