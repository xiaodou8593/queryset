#queryset:test/macro

summon marker 0 11 0 {Tags:["tmp","macro_set_0"],data:{set_keys:["A","B","C"],set:{A:{text:"hi"},B:{text:"hello"},C:{text:"?"}}}}
summon marker 0 11 0 {Tags:["tmp","macro_set_1"],data:{set_keys:["B","C","D"],set:{D:{text:"hi"},B:{text:"hello"},C:{text:"?"}}}}

data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []
data modify storage queryset:io temp_set set from entity @e[tag=macro_set_0,limit=1] data.set
data modify storage queryset:io temp_set_keys set from entity @e[tag=macro_set_1,limit=1] data.set_keys
execute if data storage queryset:io temp_set_keys[0] run function queryset:test/perf/macro_loop

tellraw @a ["set: ",{"nbt":"set","storage":"queryset:io"}]
tellraw @a ["set_keys: ",{"nbt":"set_keys","storage":"queryset:io"}]

kill @e[tag=tmp]