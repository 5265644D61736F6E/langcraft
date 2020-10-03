# Operation:
# eo = ea - eb + 127;
# rem = sa;

# Repeating Operation:
# temp = rem - sb;
# if (temp >= 0) {
#   rem = temp;
#   quot |= shift && bit;
#   shift = true;
# }
# 
# if (shift)
#   bit >>= 1;
# else
#   eo -= 1;
# 
# sb >>= 1;

# separate the floating point parts
scoreboard players operation %fdiv_rem rust = %param0%0 rust
scoreboard players operation %fdiv_rem rust %= %%8388608 rust
scoreboard players operation %fdiv_signif_b rust = %param1%0 rust
scoreboard players operation %fdiv_signif_b rust %= %%8388608 rust

# set the exponent
scoreboard players operation %param0%0 rust -= %fdiv_rem rust
scoreboard players operation %param1%0 rust -= %fdiv_signif_b rust
scoreboard players operation %param0%0 rust -= %param1%0 rust
scoreboard players add %param0%0 rust 1065353216

# initialize
scoreboard players set %fdiv_bit rust 8388608
scoreboard players set %fdiv_shift rust 0
scoreboard players set %fdiv_quot rust 0

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %fdiv_temp rust = %fdiv_rem rust
scoreboard players operation %fdiv_temp rust -= %fdiv_signif_b rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players operation %fdiv_rem rust = %fdiv_temp rust
execute if score %fdiv_temp rust matches 0.. unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_quot rust += %fdiv_bit rust
execute if score %fdiv_temp rust matches 0.. run scoreboard players set %fdiv_shift rust 1
execute unless score %fdiv_shift rust matches 0..0 run scoreboard players operation %fdiv_bit rust /= %%2 rust
execute if score %fdiv_shift rust matches 0..0 run scoreboard players remove %param0%0 rust 8388608
scoreboard players operation %fdiv_signif_b rust /= %%2 rust

scoreboard players operation %param0%0 rust += %fdiv_quot rust
