#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Bitwise and which bits are true in both operands.
say "Bitwise operator: and, &";
say 10 & 8;
say 10 & 10;
say 10 & 12;

# Bitwise or which bits are true in one operand or the other.
say "Bitwise operator: or, |";
say 10 | 8;
say 10 | 10;
say 10 | 12;

# Bitwise xor which bits are true in one operand or the other but not both.
say "Bitwise operator: xor, ^";
say 10 ^ 8;
say 10 ^ 10;
say 10 ^ 12;

# Bitwise shift left, shift the left operand by the number of bits shown in the
# right operand, adding zero-bits at the least-significant places.
say "Bitwise operator: shift left, <<";
say 10 << 8;
say 10 << 10;
say 10 << 12;

# Bitwise shift right, shift the left operand by the number of bits shown in
# the right operand, discarding the least-significant bits.
say "Bitwise operator: shift right, >>";
say 10 >> 8;
say 10 >> 10;
say 10 >> 12;
