#queryset:and/branch_1

# 把较少元素的<ssobj>用作temp遍历
data modify storage queryset:io temp_strings set from storage queryset:io set_keys

# 把较多元素的<@s>用作被判断者
data modify storage queryset:io temp_set set from entity @s data.queryset