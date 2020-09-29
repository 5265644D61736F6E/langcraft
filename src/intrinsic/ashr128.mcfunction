# Operation:
#
# l = (unsigned int) l >> sh | (sh > 64 ? (h >> 64) - -1 % (1 << sh) : h << (64 - sh));
# h = h >> sh;

# logically shift the low doubleword right
function intrinsic:lshr64
scoreboard players operation %temp0%0_ashr64 rust = %param0%0 rust
scoreboard players operation %temp0%1_ashr64 rust = %param0%1 rust

# add from the high doubleword
scoreboard players operation %temp1_ashr64 rust = %param1%0 rust
scoreboard players set %param1%0 rust 64
scoreboard players operation %param1%0 rust -= %temp1_ashr64 rust
scoreboard players operation %param0%0 rust = %param0%2 rust
scoreboard players operation %param0%1 rust = %param0%3 rust
function intrinsic:shl64
execute if score %param1%0 rust matches 65.. run scoreboard players set %param0%0 rust 0
execute if score %param1%0 rust matches 65.. if score %param0%1 rust matches ..-1 run scoreboard players set %param0%0 rust -1
execute if score %param1%0 rust matches 65.. run scoreboard players operation %param0%1 rust = %param0%0 rust
scoreboard players operation %temp0%0_ashr64 rust += %param0%0 rust
scoreboard players operation %temp0%1_ashr64 rust += %param0%1 rust

# arithmetically shift the high doubleword right
scoreboard players operation %param0%0 rust = %param0%2 rust
scoreboard players operation %param0%1 rust = %param0%3 rust
function intrinsic:ashr64

# return
scoreboard players operation %param0%2 rust = %param0%0 rust
scoreboard players operation %param0%3 rust = %param0%1 rust
scoreboard players operation %param0%0 rust = %temp0%0_ashr64 rust
scoreboard players operation %param0%1 rust = %temp0%1_ashr64 rust
