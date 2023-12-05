#queryset:test/gcnew

execute as @e[tag=queryset,tag=test] run function queryset:_del
data modify storage queryset:io input set value {name:"test_qs",gc_on:1b,tags:["test"]}
function queryset:_new
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:io result
execute as 0-0-0-8593-1 on origin run function queryset:_get
function queryset:_print