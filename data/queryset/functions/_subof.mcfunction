#queryset:_subof
# 临时对象{<queryset_cnt,int>,<queryset_gc,int>,[queryset:io]}
# 输入<@s>为被判断选择集
# 输出<res,int>表示是否是临时选择集的子集

# 如果该集合更大，则一定不是子集
execute if score @s queryset_cnt > queryset_cnt int store result score res int run return 0

# 循环遍历元素判断
scoreboard players set res int 1
data modify storage queryset:io temp_strings set from entity @s data.queryset_keys
execute if data storage queryset:io temp_strings[0] run function queryset:sub/loop