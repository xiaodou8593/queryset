#queryset:test/be

execute as @e[tag=queryset,tag=test] run function queryset:_del
data modify storage queryset:io input set value {name:"test_qs",gc_on:0b,tags:["test"]}
execute summon marker run function queryset:_be
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
function queryset:_print