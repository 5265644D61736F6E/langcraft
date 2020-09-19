# Operation:
#
# w0 = src << 29; // the last 3 bits of the significand
# w1 = 
#      ((src & 0x3FFFFFFF) >> 3)                // the significand and the 8 least significant bits of the exponent
#    | (src & 0xC0000000)                       // the two most significant bits
#    | (src & 0x40000000 ? 0 : 0x38000000);     // some bits in between the exponent MSB and the rest of the exponent

# save the original param0 in various registers
scoreboard players operation %param0%1 rust = %param0%0 rust
scoreboard players operation %temp1_fpext rust = %param0%0 rust
scoreboard players operation %temp2_fpext rust = %param0%0 rust

# shift param0%0 left by 29, this is the output value
scoreboard players set %temp0_fpext rust 536870912
scoreboard players operation %param0%0 rust *= %temp0_fpext rust

# part 1 and part 2 of param1
scoreboard players set %temp0_fpext rust 1073741824
scoreboard players operation %param0%1 rust %= %temp0_fpext rust
scoreboard players operation %temp1_fpext rust -= %param0%1 rust
scoreboard players set %temp0_fpext rust 8
scoreboard players operation %param0%1 rust /= %temp0_fpext rust
scoreboard players operation %param0%1 rust += %temp1_fpext rust

# part 3 of param1
scoreboard players set %temp0_fpext rust 939524096
scoreboard players operation %temp2_fpext rust += %temp2_fpext rust
execute if score %temp2_fpext rust matches 0.. run scoreboard players operation %param0%1 rust += %temp0_fpext rust
