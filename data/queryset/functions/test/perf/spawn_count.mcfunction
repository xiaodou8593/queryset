#queryset:test/perf/spawn_count

execute as @e[tag=perf_test,tag=queryset] run function queryset:_del
kill @e[tag=perf_test]

# 生成选择集
data modify storage queryset:io input set value {name:"class_0",tags:["perf_test"]}
function queryset:_new
data modify storage queryset:io input set value {name:"class_1",tags:["perf_test"]}
function queryset:_new

# 生成class_0
scoreboard players operation loop int = n int
execute if score loop int matches 1.. summon marker run function queryset:test/perf/loop_class0
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class class_0.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=class_0] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store

# 生成class_0 && class_1
scoreboard players operation loop int = inp int
execute if score loop int matches 1.. summon marker run function queryset:test/perf/loop_class1
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class class_1.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=class_0,tag=class_1] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store