# Operation:
# i = f
# s = f & 0x80000000
# if (unlikely(e > 127 + 23))
#   i <<= e - 127 - 23;
# else if (likely(e < 127 + 23))
#   i >>= 127 + 23 - e;

# get the exponent
scoreboard players operation %temp0_ftoi rust = %param0%0 rust
scoreboard players set %param1%0 rust 23
function intrinsic:lshr
scoreboard players operation %param0%0 rust %= %%256 rust
scoreboard players operation %temp1_ftoi rust = %param0%0 rust
scoreboard players operation %param0%0 rust = %temp0_ftoi rust

# add the hidden bit
scoreboard players add %param0%0 rust 8388608

# shift the significand
execute if score %temp1_ftoi rust matches ..149 run scoreboard players set %param1%0 rust 150
execute if score %temp1_ftoi rust matches ..149 run scoreboard players operation %param1%0 rust -= %temp1_ftoi rust
execute if score %temp1_ftoi rust matches ..149 run function intrinsic:lshr
execute if score %temp1_ftoi rust matches 151.. run scoreboard players operation %param1%0 rust = %temp1_ftoi rust
execute if score %temp1_ftoi rust matches 151.. run scoreboard players remove %param1%0 rust 150
execute if score %temp1_ftoi rust matches 151.. run function intrinsic:shl

# add the sign bit
scoreboard players set %%-1 rust -1
execute if score %temp0_ftou rust matches ..-1 run scoreboard players operation %param0%0 rust *= %%-1 rust
