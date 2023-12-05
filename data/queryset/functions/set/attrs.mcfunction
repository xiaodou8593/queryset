#queryset:set/attrs

# 实体基础属性
data modify entity @s data merge value {queryset_name:"",queryset:{},queryset_keys:[]}
data modify entity @s Tags append from storage queryset:io input.tags[]
tag @s add queryset

# 分配id
execute unless data storage queryset:io free_addr[-1] run function queryset:set/new_addr
execute store result score @s queryset_id run data get storage queryset:io free_addr[-1]
data remove storage queryset:io free_addr[-1]

# 记录选择集信息
data modify entity @s data.queryset_name set from storage queryset:io input.name
function queryset:set/class with storage queryset:io input

# 选择集属性
execute store result score @s queryset_gc run data get storage queryset:io input.gc_on
scoreboard players set @s queryset_cnt 0