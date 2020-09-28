# Use udiv64 to set some values
function intrinsic:udiv64

# Perform arithmetic on the udiv64 intermediates
scoreboard players set %%-1 rust -1
scoreboard players add %udiv64_current_mul%0 rust 1
scoreboard players add %udiv64_current_mul%1 rust 1
scoreboard players operation %udiv64_current_mul%0 rust *= %%-1 rust
scoreboard players operation %udiv64_current_mul%1 rust *= %%-1 rust
scoreboard players operation %urem64_mul%0 rust = %udiv64_current_mul%0 rust
scoreboard players operation %urem64_mul%1 rust = %udiv64_current_mul%1 rust
scoreboard players operation %param0%0 rust = %udiv64_target%0 rust
scoreboard players operation %param0%1 rust = %udiv64_target%1 rust
scoreboard players add %urem64_mul%0 rust 1
execute if score %udiv64_current_mul%0 rust matches ..-1 if score %urem64_mul%0 rust matches 0.. run scoreboard players add %urem64_mul%1 rust 1
scoreboard players operation %param0%1 rust += %urem64_mul%1 rust
scoreboard players operation %param0%0 rust += %urem64_mul%0 rust
execute if score %udiv64_target%0 rust matches ..-1 if score %urem64_mul%0 rust matches ..-1 run scoreboard players add %udiv64_temp0%1 rust 1
execute if score %udiv64_target%0 rust matches ..-1 if score %urem64_mul%0 rust matches 0.. if score %param0%0 rust matches 0.. run scoreboard players add %udiv64_temp0%1 rust 1
execute if score %udiv64_target%0 rust matches ..0 if score %urem64_mul%0 rust matches ..-1 if score %param0%0 rust matches 0.. run scoreboard players add %udiv64_temp0%1 rust 1
