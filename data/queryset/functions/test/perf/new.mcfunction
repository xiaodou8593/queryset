#queryset:test/perf/new

function math:stmp/_del
scoreboard players set sinp int 200
function math:stmp/_new
tag @e[tag=stmp,sort=random,limit=100] add class_0
tag @e[tag=stmp,sort=random,limit=100] add class_1

execute as @e[tag=queryset,tag=test] run function queryset:_del
data modify storage queryset:io input set value {name:"test_qs_0",tags:["test"]}
function queryset:_new
data modify storage queryset:io input set value {name:"test_qs_1",tags:["test"]}
function queryset:_new

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_0.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=class_0] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_1.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=class_1] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store

kill @e[tag=macro_set]

data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []
execute as @e[tag=class_0] run function queryset:test/perf/macro_append with entity @s {}
summon marker 0 11 0 {Tags:["macro_set","macro_set_0"]}
data modify entity @e[tag=macro_set_0,limit=1] data.set set from storage queryset:io set
data modify entity @e[tag=macro_set_0,limit=1] data.set_keys set from storage queryset:io set_keys

data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []
execute as @e[tag=class_1] run function queryset:test/perf/macro_append with entity @s {}
summon marker 0 11 0 {Tags:["macro_set","macro_set_1"]}
data modify entity @e[tag=macro_set_1,limit=1] data.set set from storage queryset:io set
data modify entity @e[tag=macro_set_1,limit=1] data.set_keys set from storage queryset:io set_keys