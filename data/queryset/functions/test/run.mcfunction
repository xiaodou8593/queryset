#queryset:test/run

execute as @e[tag=queryset,tag=test] run function queryset:_del
kill @e[tag=test]

data modify storage queryset:io input set value {name:"test_qs_1",tags:["test"]}
function queryset:_new
data modify storage queryset:io input set value {name:"test_qs_2",tags:["test"]}
function queryset:_new

summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'{"text":"C"}'}
summon marker 0 11 0 {Tags:["tmp","tmp2","tmp1"],CustomName:'{"text":"D"}'}
summon marker 0 11 0 {Tags:["tmp","tmp2","tmp1"],CustomName:'{"text":"E"}'}
summon marker 0 11 0 {Tags:["tmp","tmp2"],CustomName:'{"text":"F"}'}

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_2.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=tmp2] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_1.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=tmp1] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store

data modify storage queryset:io input set value {run:"function queryset:test/run_nest",data:"hello"}
function queryset:_run

kill @e[tag=tmp]