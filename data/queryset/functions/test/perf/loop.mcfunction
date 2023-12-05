#queryset:test/perf/loop

execute if score test int matches 0 run function queryset:test/perf/branch_0
execute if score test int matches 1 run function queryset:test/perf/branch_1

# 循环迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function queryset:test/perf/loop