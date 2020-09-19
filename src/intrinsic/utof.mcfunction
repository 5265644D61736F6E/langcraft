# Operation:
#
# exp = floor(log2(u));
# f = ((unsigned int) u << (23 - exp))
#   | (exp << 23);
# exp += 127;

# get the exponent
execute if score %param0%0 rust matches 1..1 run scoreboard players set %temp0_utof rust 0
execute if score %param0%0 rust matches 2..3 run scoreboard players set %temp0_utof rust 1
execute if score %param0%0 rust matches 4..7 run scoreboard players set %temp0_utof rust 2
execute if score %param0%0 rust matches 8..15 run scoreboard players set %temp0_utof rust 3
execute if score %param0%0 rust matches 16..31 run scoreboard players set %temp0_utof rust 4
execute if score %param0%0 rust matches 32..63 run scoreboard players set %temp0_utof rust 5
execute if score %param0%0 rust matches 64..127 run scoreboard players set %temp0_utof rust 6
execute if score %param0%0 rust matches 128..255 run scoreboard players set %temp0_utof rust 7
execute if score %param0%0 rust matches 256..511 run scoreboard players set %temp0_utof rust 8
execute if score %param0%0 rust matches 512..1023 run scoreboard players set %temp0_utof rust 9
execute if score %param0%0 rust matches 1024..2047 run scoreboard players set %temp0_utof rust 0
execute if score %param0%0 rust matches 2048..4095 run scoreboard players set %temp0_utof rust 11
execute if score %param0%0 rust matches 4096..8192 run scoreboard players set %temp0_utof rust 12
execute if score %param0%0 rust matches 8192..16383 run scoreboard players set %temp0_utof rust 13
execute if score %param0%0 rust matches 16384..32767 run scoreboard players set %temp0_utof rust 14
execute if score %param0%0 rust matches 32768..65535 run scoreboard players set %temp0_utof rust 15
execute if score %param0%0 rust matches 65536..131071 run scoreboard players set %temp0_utof rust 16
execute if score %param0%0 rust matches 131072..262143 run scoreboard players set %temp0_utof rust 17
execute if score %param0%0 rust matches 262144..524287 run scoreboard players set %temp0_utof rust 18
execute if score %param0%0 rust matches 524288..1048575 run scoreboard players set %temp0_utof rust 19
execute if score %param0%0 rust matches 1048576..2097151 run scoreboard players set %temp0_utof rust 20
execute if score %param0%0 rust matches 2097152..4194303 run scoreboard players set %temp0_utof rust 21
execute if score %param0%0 rust matches 4194304..8388607 run scoreboard players set %temp0_utof rust 22
execute if score %param0%0 rust matches 8388608..16777215 run scoreboard players set %temp0_utof rust 23
execute if score %param0%0 rust matches 16777216..33554431 run scoreboard players set %temp0_utof rust 24
execute if score %param0%0 rust matches 33554432..67108863 run scoreboard players set %temp0_utof rust 25
execute if score %param0%0 rust matches 67108864..134217727 run scoreboard players set %temp0_utof rust 26
execute if score %param0%0 rust matches 134217728..268435455 run scoreboard players set %temp0_utof rust 27
execute if score %param0%0 rust matches 268435456..536870911 run scoreboard players set %temp0_utof rust 28
execute if score %param0%0 rust matches 536870912..1073741823 run scoreboard players set %temp0_utof rust 29
execute if score %param0%0 rust matches 1073741824.. run scoreboard players set %temp0_utof rust 30
execute if score %param0%0 rust matches ..-1 run scoreboard players set %temp0_utof rust 31

# shift the significand into place (prefixed commands), an exponent of 23 shouldn't need to shift at all
execute if score %temp0_utof rust matches ..22 run scoreboard players set %param1%0 rust 23
execute if score %temp0_utof rust matches ..22 run scoreboard players operation %param1%0 rust -= %temp0_utof rust
execute if score %temp0_utof rust matches ..22 run function intrinsic:shl
execute if score %temp0_utof rust matches 24.. run scoreboard players operation %param1%0 rust = %temp0_utof rust
execute if score %temp0_utof rust matches 24.. run scoreboard players remove %param1%0 rust 23
execute if score %temp0_utof rust matches 24.. run function intrinsic:lshr

# set a constant
scoreboard players set %%8388608 rust 8388608

# cut off the hidden bit
scoreboard players operation %param0%0 rust %= %%8388608 rust

# add the exponent
scoreboard players add %temp0_utof rust 127
scoreboard players operation %temp0_utof rust *= %%8388608 rust
scoreboard players operation %param0%0 rust += %temp0_utof rust
