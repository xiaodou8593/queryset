#queryset:test/or

execute as @e[tag=queryset,tag=test] run function queryset:_del

summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'{"text":"C"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'{"text":"D"}'}
summon marker 0 11 0 {Tags:["tmp","tmp2"],CustomName:'{"text":"E"}'}

data modify storage queryset:io input set value {name:"test_qs_1",tags:["test"]}
function queryset:_new
data modify storage queryset:io input set value {name:"test_qs_2",tags:["test"]}
function queryset:_new

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_1.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=tmp1] run function queryset:_append
execute as 0-0-0-8593-1 on origin run function queryset:_store
function queryset:_print

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_2.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
execute as @e[tag=tmp2] run function queryset:_append
function queryset:_print
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_1.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_or

function queryset:_print

kill @e[tag=tmp]