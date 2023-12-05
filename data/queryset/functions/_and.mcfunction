#queryset:_and
# 临时对象
# 输入<@s>对其进行求交

# 比较元素多少选择遍历者
execute if score @s queryset_cnt >= queryset_cnt int run function queryset:and/branch_0
execute if score @s queryset_cnt < queryset_cnt int run function queryset:and/branch_1

# 清空临时对象
scoreboard players set queryset_cnt int 0
data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []

# 进入循环遍历元素
execute if data storage queryset:io temp_strings[-1] run function queryset:and/loop