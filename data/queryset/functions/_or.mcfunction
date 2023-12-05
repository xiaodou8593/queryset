#queryset:_or
# 临时对象
# 输入<@s>对其进行求并

# 比较元素多少选择遍历者
execute if score @s queryset_cnt >= queryset_cnt int run function queryset:or/branch_0
execute if score @s queryset_cnt < queryset_cnt int run function queryset:or/branch_1

# 进入循环遍历元素
execute if data storage queryset:io temp_strings[-1] run function queryset:or/loop