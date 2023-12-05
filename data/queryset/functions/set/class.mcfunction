#queryset:set/class

# 记录选择集，方便选择
$data modify storage queryset:class $(name) set from storage queryset:io input
$data modify storage queryset:class $(name).uuid set from entity @s UUID