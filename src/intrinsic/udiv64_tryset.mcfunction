# t = b << (64 - n);
# 
# if (m + t <= a) {
#   m += t;
#   r |= (1 << (64 - n));
# }

# t = b << (64 - n);
scoreboard players operation %param0%0 rust = %udiv64_div rust
scoreboard players operation %param0%1 rust = %param1%1 rust
scoreboard players set %param1%0 rust 64
scoreboard players operation %param1%0 rust -= %udiv64_current_bit rust
function intrinsic:shl64

# m + t
scoreboard players operation %udiv64_temp0%1 rust = %udiv64_current_mul%1 rust
scoreboard players operation %udiv64_temp0%1 rust += %param0%1 rust
scoreboard players operation %udiv64_temp0%0 rust = %udiv64_current_mul%0 rust
scoreboard players operation %udiv64_temp0%0 rust += %param0%0 rust
execute if score %udiv64_current_mul%0 rust matches ..-1 if score %param0%0 rust matches ..-1 run scoreboard players add %udiv64_temp0%1 rust 1
execute if score %udiv64_current_mul%0 rust matches ..-1 if score %param0%0 rust matches 0.. if score %udiv64_temp0%0 rust matches 0.. run scoreboard players add %udiv64_temp0%1 rust 1
execute if score %udiv64_current_mul%0 rust matches ..0 if score %param0%0 rust matches ..-1 if score %udiv64_temp0%0 rust matches 0.. run scoreboard players add %udiv64_temp0%1 rust 1

# <= a
scoreboard players set %udiv64_le rust 0
execute if score %udiv64_temp0%1 rust matches 0.. if score %udiv64_target%1 rust matches 0.. if score %udiv64_temp0%1 rust < %udiv64_target%1 rust run scoreboard players set %udiv64_le rust 1
execute if score %udiv64_temp0%1 rust matches ..-1 if score %udiv64_target%1 rust matches ..-1 if score %udiv64_temp0%1 rust < %udiv64_target%1 rust run scoreboard players set %udiv64_le rust 1
execute if score %udiv64_temp0%1 rust matches 0.. if score %udiv64_target%1 rust matches ..-1 run scoreboard players set %udiv64_le rust 1
execute if score %udiv64_temp0%1 rust = %udiv64_target%1 rust if score %udiv64_temp0%0 rust matches 0.. if score %udiv64_target%0 rust matches 0.. if score %udiv64_temp0%0 rust < %udiv64_target%0 rust run scoreboard players set %udiv64_le rust 1
execute if score %udiv64_temp0%1 rust = %udiv64_target%1 rust if score %udiv64_temp0%0 rust matches ..-1 if score %udiv64_target%0 rust matches ..-1 if score %udiv64_temp0%0 rust < %udiv64_target%0 rust run scoreboard players set %udiv64_le rust 1
execute if score %udiv64_temp0%1 rust = %udiv64_target%1 rust if score %udiv64_temp0%0 rust matches 0.. if score %udiv64_target%0 rust matches ..-1 run scoreboard players set %udiv64_le rust 1

# m += t
execute if score %udiv64_le rust matches 1.. run scoreboard players operation %udiv64_current_mul%0 rust = %udiv64_temp0%0 rust
execute if score %udiv64_le rust matches 1.. run scoreboard players operation %udiv64_current_mul%1 rust = %udiv64_temp0%1 rust

# r |= 1 << (64 - n)
scoreboard players set %param0%0 rust 1
scoreboard players set %param0%1 rust 0
scoreboard players set %param1%0 rust 64
scoreboard players operation %param1%0 rust -= %udiv64_current_bit rust
function intrinsic:shl64
scoreboard players operation %udiv64_res%0 rust += %param0%0 rust
scoreboard players operation %udiv64_res%1 rust += %param0%1 rust
