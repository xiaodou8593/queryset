#queryset:test/perf/loop_class0

data merge entity @s {Tags:["class_0","perf_test"]}

# 循环迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. summon marker run function queryset:test/perf/loop_class0