# Operation:
#
# l = (unsigned int) l >> sh | (sh > 32 ? h >> 32 : h << (32 - sh));
# h = h >> sh;

# logically shift the low word right
function intrinsic:lshr
scoreboard players operation %temp0_ashr64 rust = %param0%0 rust

# add the shifted part
scoreboard players operation %temp1_ashr64 rust = %param1%0 rust
scoreboard players set %param1%0 rust 32
scoreboard players operation %param1%0 rust -= %temp1_ashr64 rust
scoreboard players operation %param0%0 rust = %param0%1 rust
function intrinsic:shl
execute if score %param1%0 rust matches 33.. run scoreboard players set %param0%0 rust 0
execute if score %param1%0 rust matches 33.. if score %param0%1 rust matches ..-1 run scoreboard players set %param0%0 rust -1
scoreboard players operation %temp0_ashr64 rust += %param0%0 rust

# arithmetically shift the high word right
scoreboard players operation %param0%0 rust = %param0%1 rust
function intrinsic:ashr

# return
scoreboard players operation %param0%1 rust = %param0%0 rust
scoreboard players operation %param0%0 rust = %temp0_ashr64 rust
