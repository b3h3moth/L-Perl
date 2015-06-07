#!/usr/bin/env perl
use strict;
use warnings;
use v5.14;

say "10. Ordinary code runs at runtime.";

END {
    say "16. So this is the end of the tale.";
}

INIT {
    say "7. INIT blocks run FIFO just before runtime.";
}

UNITCHECK {
    say "4. And therefore before any CHECK blocks.";
}
  
CHECK { 
    say "6. So this is the sixth line.";
}
    
say "11. It runs in order, of course.";

BEGIN  {
    say "1. BEGIN blocks run FIFO during compilation.";
}
  
END {
    say "15. Read perlmod for the rest of the story.";
}
  
CHECK {
    say "5. CHECK blocks run LIFO after all compilation.";
}
  
INIT {
    say "8. Run this again, using Perl's -c switch.";
}

say "12. This is anti-obfuscated code.";

END {
    say "14. END blocks run LIFO at quitting time.";
}
  
BEGIN { 
    say "2. So this line comes out second.";
}
  
UNITCHECK {
    say "3. UNITCHECK blocks run LIFO after each file is compiled.";
}
  
INIT {
    say "9. You'll see the difference right away.";
}

say "13. It merely _looks_ like it should be confusing.";
