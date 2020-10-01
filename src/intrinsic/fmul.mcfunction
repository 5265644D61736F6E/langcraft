# General Operation:
# eo = ea + eb - 127;

# Significand Multiplication Operation (repeat 23 times):
# sb %= 0x08000000;
# if (sb >= 0x04000000)
#   so += sa;
# 
# if (so >= 0x08000000) {
#   eo += 1;
#   so >>= 1;
# }
# 
# sa >>= 1;
# sb <<= 1;

scoreboard players operation %temp0_fmul rust = %param0%0 rust
scoreboard players operation %temp1_fmul rust += %param1%0 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %param1%0 rust %= %%134217728 rust
execute if score %param1%0 rust matches 67108864.. run scoreboard players operation %return%0 rust += %param0%0 rust
execute if score %return%0 rust matches 134217728.. run scoreboard players add %temp0_fmul rust 1
execute if score %return%0 rust matches 134217728.. run scoreboard players operation %return%0 rust /= %%2 rust
scoreboard players operation %param0%0 rust /= %%2 rust
scoreboard players operation %param1%0 rust *= %%2 rust

scoreboard players operation %return%0 rust += %temp0_fmul rust
