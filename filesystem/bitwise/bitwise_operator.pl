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

