# Do almost the same thing as udiv64, handling the sign bit individually

# store the sign bit
scoreboard players set %idiv64_sign0 rust 0
scoreboard players set %idiv64_sign1 rust 0
execute if score %param0%1 rust matches ..-1 run scoreboard players set %idiv64_sign0 rust -2147483648
execute if score %param1%1 rust matches ..-1 run scoreboard players set %idiv64_sign1 rust -2147483648
execute if score %idiv64_sign0 rust matches ..-1 run scoreboard players add %idiv64_sign0 rust 1073741824
execute if score %idiv64_sign0 rust matches ..-1 run scoreboard players add %idiv64_sign0 rust 1073741824
execute if score %idiv64_sign1 rust matches ..-1 run scoreboard players add %idiv64_sign1 rust 1073741824
execute if score %idiv64_sign1 rust matches ..-1 run scoreboard players add %idiv64_sign1 rust 1073741824
# this will perform the XOR operation on the sign bits
scoreboard players operation %idiv64_sign0 rust += %idiv64_sign1 rust

function intrinsic:udiv64

# return
scoreboard players operation %param0%1 rust += %idiv64_sign0 rust
