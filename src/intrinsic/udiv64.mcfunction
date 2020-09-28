# // a looping pattern would look like this in C: 
# if (b < 1 << n) {
#   if ((r | (1 << (64 - n))) * b <= a)
#     r |= (1 << (64 - n));
# }

# // to make it easier to implement, the multiplier is stored and there are more assignments
# // the variable m is used to store the current multiplied value
# if (b < 1 << n) {
#   t = b << (64 - n);
#   
#   if (m + t <= a) {
#     m += t;
#     r |= (1 << (64 - n));
#   }
# }

scoreboard players operation %udiv64_target%0 rust = %param0%0 rust
scoreboard players operation %udiv64_target%1 rust = %param0%1 rust

scoreboard players operation %udiv64_div rust = %param1%0 rust

scoreboard players set %udiv64_current_mul%0 rust 0
scoreboard players set %udiv64_current_mul%1 rust 0

scoreboard players set %udiv64_res%0 rust 0
scoreboard players set %udiv64_res%1 rust 0

# prefixing every command is difficult so this is the current solution
scoreboard players set %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..1 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..3 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..7 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..15 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..31 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..63 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..127 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..255 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..511 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..1023 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..2047 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..4095 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..8191 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..16383 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..32768 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..65536 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..131071 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..262143 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..524287 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..1048575 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..2097151 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..4194303 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..8388607 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..16777215 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..33554431 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..67108863 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..134217727 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..268435455 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..536870911 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0..1073741823 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 if score %param1%0 rust matches 0.. run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..0 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..1 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..3 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..5 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..7 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..15 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..31 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..63 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..127 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..255 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..511 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..1023 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..2047 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..4095 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..8191 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..16383 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..32767 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..65535 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..131071 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..262143 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..524287 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..1048575 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..2097151 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..4194303 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..8388607 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..16777215 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..33554431 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..67108863 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..134217727 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..268435455 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..536870911 run function intrinsic:udiv64_tryset
scoreboard players add %udiv64_current_bit rust 1
execute if score %param1%1 rust matches 0..1073741823 run function intrinsic:udiv64_tryset

scoreboard players operation %param0%0 rust = %udiv64_res%0 rust
scoreboard players operation %param0%1 rust = %udiv64_res%1 rust
