#queryset:test/elmof

function queryset:test/new

summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"C"}'}
summon marker 0 11 0 {Tags:["tmp"],CustomName:'{"text":"D"}'}

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get

execute as @e[tag=tmp1] run function queryset:_append

execute as @e[tag=tmp1,limit=1] run function queryset:_elmof
tellraw @a ["res_1: ",{"score":{"name":"res","objective":"int"}}]
execute as @e[tag=!tmp1,tag=tmp,limit=1] run function queryset:_elmof
tellraw @a ["res_2: ",{"score":{"name":"res","objective":"int"}}]

kill @e[tag=tmp]