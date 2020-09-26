# Operation:
# u = s
# if (unlikely(e > 127 + 23))
#   u <<= e - 127 - 23;
# else if (likely(e < 127 + 23))
#   u >>= 127 + 23 - e;

# get the exponent
scoreboard players operation %temp0_ftou rust = %param0%0 rust
scoreboard players set %param1%0 rust 23
function intrinsic:lshr
scoreboard players operation %param0%0 rust %= %%256 rust
scoreboard players operation %temp1_ftou rust = %param0%0 rust
scoreboard players operation %param0%0 rust = %temp0_ftou rust

# add the hidden bit
scoreboard players add %param0%0 rust 8388608

# shift the significand
execute if score %temp1_ftou rust matches ..149 run scoreboard players set %param1%0 rust 150
execute if score %temp1_ftou rust matches ..149 run scoreboard players operation %param1%0 rust -= %temp1_ftou rust
execute if score %temp1_ftou rust matches ..149 run function intrinsic:lshr
execute if score %temp1_ftou rust matches 151.. run scoreboard players operation %param1%0 rust = %temp1_ftou rust
execute if score %temp1_ftou rust matches 151.. run scoreboard players remove %param1%0 rust 150
execute if score %temp1_ftou rust matches 151.. run function intrinsic:shl
