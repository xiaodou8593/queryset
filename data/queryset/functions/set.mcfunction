#queryset:set
# 初始化设置选择集

# 设置属性
data modify entity @s CustomName set value '{"text":"queryset"}'
function queryset:set/attrs

# 返回指针
data modify storage queryset:io result set from entity @s UUID