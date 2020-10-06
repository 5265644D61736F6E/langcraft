# Operation:
# 
# r = ((h & 0x07FFFFFF) << 3)		// main part
#   | (h & 0xC0000000)				// sign bit and high exponent
#   | ((l & 0xE0000000) >> 29);		// least significant part of the significand

# store the sign bit
scoreboard players operation %dtos_temp rust = %param0%1 rust
scoreboard players operation %dtos_temp rust %= %%1073741824 rust
scoreboard players operation %dtos_sign rust = %param0%1 rust
scoreboard players operation %dtos_sign rust -= %dtos_temp rust

# shift the low word into place
scoreboard players operation %dtos_temp rust = %param0%0 rust
scoreboard players operation %dtos_temp rust %= %%8388608 rust
scoreboard players operation %param0%0 rust -= %dtos_temp rust
scoreboard players set %param1%0 rust 29
function intrinsic:lshr

# add the main part
scoreboard players operation %param0%1 rust %= %%16777216 rust
scoreboard players operation %param0%1 rust *= %%8 rust
scoreboard players operation %param0%0 rust += %param0%1 rust

# add the sign bit
scoreboard players operation %param0%0 rust += %dtos_sign rust

# return
