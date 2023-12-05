#queryset:test/subof

execute as @e[tag=queryset,tag=test] run function queryset:_del

summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2","tmp3"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2","tmp3"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2","tmp3"],CustomName:'{"text":"C"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"D"}'}
summon marker 0 11 0 {Tags:["tmp","tmp3"],CustomName:'{"text":"E"}'}

data modify storage queryset:io input set value {name:"test_qs1",tags:["tmp","test_qs1"]}
function queryset:_new
data modify storage queryset:io input set value {name:"test_qs2",tags:["tmp","test_qs2"]}
function queryset:_new
data modify storage queryset:io input set value {name:"test_qs3",tags:["tmp","test_qs3"]}
function queryset:_new

execute as @e[tag=test_qs1,limit=1] run function queryset:_get
execute as @e[tag=tmp1] run function queryset:_append
execute as @e[tag=test_qs1,limit=1] run function queryset:_store

execute as @e[tag=test_qs2,limit=1] run function queryset:_get
execute as @e[tag=tmp2] run function queryset:_append
execute as @e[tag=test_qs2,limit=1] run function queryset:_store

execute as @e[tag=test_qs3,limit=1] run function queryset:_get
execute as @e[tag=tmp3] run function queryset:_append
execute as @e[tag=test_qs3,limit=1] run function queryset:_store

execute as @e[tag=test_qs1,limit=1] run function queryset:_get

execute as @e[tag=test_qs2,limit=1] run function queryset:_subof
tellraw @a ["res_1: ",{"score":{"name":"res","objective":"int"}}]

execute as @e[tag=test_qs3,limit=1] run function queryset:_subof
tellraw @a ["res_2: ",{"score":{"name":"res","objective":"int"}}]

execute as @e[tag=tmp,tag=queryset] run function queryset:_del
kill @e[tag=tmp]