# Operation:
# z = a0 * b0;
# y = c + a1 * b0 + a0 * b1;
# x = c + a2 * b0 + a1 * b1 + a0 * b2;
# w = c + a3 * b0 + a2 * b1 + a1 * b2 + a0 * b3;

# save the overwritten arguments
scoreboard players operation %mul128_input0%0 rust = %param0%0 rust
scoreboard players operation %mul128_input1%0 rust = %param1%0 rust

# word 0 first multiplication
function intrinsic:mul_32_to_64
scoreboard players operation %mul128_output%0 rust = %return%0 rust
# directly write to the current carry because the previous value isn't needed
scoreboard players operation %mul128_carry_a rust = %return%1 rust

# word 1 first multiplication
scoreboard players operation %param0%0 rust = %param0%1 rust
scoreboard players operation %param1%0 rust = %mul128_input1%0 rust
function intrinsic:mul_32_to_64
scoreboard players operation %mul128_output%1 rust = %return%0 rust
scoreboard players operation %mul128_temp0 rust = %return%0 rust
scoreboard players operation %mul128_carry_b rust = %return%1 rust

# word 1 second multiplication
scoreboard players operation %param0%0 rust = %mul128_input0%0 rust
scoreboard players operation %param1%0 rust = %param1%1 rust
function intrinsic:mul_32_to_64
scoreboard players operation %mul128_output%1 rust += %return%0 rust
scoreboard players operation %mul128_carry_b rust += %return%1 rust

# carry to
execute if score %mul128_temp0 rust matches ..-1 if score %return%0 rust matches ..-1 run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp0 rust matches ..0 if score %return%0 rust matches ..-1 if score %mul128_output%1 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp0 rust matches ..-1 if score %return%0 rust matches ..0 if score %mul128_output%1 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1

# carry from (and to)
scoreboard players operation %mul128_temp0 rust = %mul128_output%1 rust
scoreboard players operation %mul128_output%1 rust += %mul128_carry_a rust
execute if score %mul128_temp0 rust matches ..-1 if score %mul128_carry_a rust matches ..-1 run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp0 rust matches ..0 if score %mul128_carry_a rust matches ..-1 if score %mul128_output%1 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp0 rust matches ..-1 if score %mul128_carry_a rust matches ..0 if score %mul128_output%1 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1

# move the carry for word 2
scoreboard players operation %mul128_carry_a rust = %mul128_carry_b rust

# word 2 first multiplication
scoreboard players operation %param0%0 rust = %param0%2 rust
scoreboard players operation %param1%0 rust = %mul128_input1%0 rust
function intrinsic:mul_32_to_64
scoreboard players operation %mul128_output%2 rust = %return%0 rust
scoreboard players operation %mul128_temp0 rust = %return%0 rust
scoreboard players operation %mul128_carry_b rust = %return%1 rust

# word 2 second multiplication
scoreboard players operation %param0%0 rust = %param0%1 rust
scoreboard players operation %param1%0 rust = %param1%1 rust
function intrinsic:mul_32_to_64
scoreboard players operation %mul128_output%2 rust += %return%0 rust
scoreboard players operation %mul128_temp1 rust = %return%0 rust
scoreboard players operation %mul128_carry_b rust += %return%1 rust

# carry to
execute if score %mul128_temp0 rust matches ..-1 if score %return%0 rust matches ..-1 run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp0 rust matches ..0 if score %return%0 rust matches ..-1 if score %mul128_output%2 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp0 rust matches ..-1 if score %return%0 rust matches ..0 if score %mul128_output%2 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1

# word 2 third multiplication
scoreboard players operation %param0%0 rust = %mul128_input0%0 rust
scoreboard players operation %param1%0 rust = %param1%2 rust
function intrinsic:mul_32_to_64
scoreboard players operation %mul128_output%2 rust += %return%0 rust
scoreboard players operation %mul128_carry_b rust += %return%1 rust

# carry to
execute if score %mul128_temp1 rust matches ..-1 if score %return%0 rust matches ..-1 run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp1 rust matches ..0 if score %return%0 rust matches ..-1 if score %mul128_output%2 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1
execute if score %mul128_temp1 rust matches ..-1 if score %return%0 rust matches ..0 if score %mul128_output%2 rust matches 0.. run scoreboard players add %mul128_carry_b rust 1

# word 3 multiplications (no carry out is fine)
scoreboard players operation %param0%3 rust *= %mul128_input1 rust
scoreboard players operation %param0%2 rust *= %param1%1 rust
scoreboard players operation %param0%1 rust *= %param1%2 rust
scoreboard players operation %mul128_input0 rust *= %param1%3 rust

# add the products together
scoreboard players operation %mul128_output%3 rust = %mul128_carry_b rust
scoreboard players operation %mul128_output%3 rust += %mul128_input0 rust
scoreboard players operation %mul128_output%3 rust += %param0%1 rust
scoreboard players operation %mul128_output%3 rust += %param0%2 rust
scoreboard players operation %mul128_output%3 rust += %param0%3 rust

# return
scoreboard players operation %return%0 rust = %mul128_output%0 rust
scoreboard players operation %return%1 rust = %mul128_output%1 rust
scoreboard players operation %return%2 rust = %mul128_output%2 rust
scoreboard players operation %return%3 rust = %mul128_output%3 rust
