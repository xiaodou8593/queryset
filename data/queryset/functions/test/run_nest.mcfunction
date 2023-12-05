#queryset:test/run_nest

tellraw @a ["<",{"selector":"@s"},"> ",{"nbt":"run_params.data","storage":"queryset:io"}]

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_2.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get

data modify storage queryset:io input set value {run:"function queryset:test/run_nest_nest",data:"world"}
function queryset:_run