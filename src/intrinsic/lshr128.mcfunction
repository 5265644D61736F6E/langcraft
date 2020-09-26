# lshr64 and shl64 makes this simpler

# Operation:
# h = h >> s
# l = (l >> s) | (h << (32 - s))

scoreboard players operation %temp2_lshr128 rust = %param1%0 rust

execute if score %param1%0 rust matches 0..63 run function intrinsic:lshr64
execute if score %param1%0 rust matches 64.. run scoreboard players set %param0%0 rust 0
execute if score %param1%0 rust matches 64.. run scoreboard players set %param0%1 rust 0
scoreboard players operation %temp0_lshr128 rust = %param0%0 rust
scoreboard players operation %temp1_lshr128 rust = %param0%1 rust

scoreboard players operation %param0%0 rust = %param0%2 rust
scoreboard players operation %param0%1 rust = %param0%3 rust
scoreboard players set %param1%0 rust 64
scoreboard players operation %param1%0 rust -= %temp2_lshr128 rust
function intrinsic:shl64
scoreboard players operation %temp0_lshr128 rust += %param0%0 rust
scoreboard players operation %temp1_lshr128 rust += %param0%1 rust

scoreboard players operation %param0%0 rust = %param0%2 rust
scoreboard players operation %param0%1 rust = %param0%3 rust
scoreboard players operation %param1%0 rust = %temp2_lshr128 rust
function intrinsic:lshr64

scoreboard players operation %param0%2 rust = %param0%0 rust
scoreboard players operation %param0%3 rust = %param0%1 rust
scoreboard players operation %param0%0 rust = %temp0_lshr128 rust
scoreboard players operation %param0%1 rust = %temp1_lshr128 rust
