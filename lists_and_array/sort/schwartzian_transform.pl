#!/usr/bin/env perl
use strict;
use warnings;
use v5.22.0;

my @tedx_feeds = qw{
different
used
important
every
large
available
popular
able
basic
known
various
difficult
several
united
historical
hot
useful
mental
scared
additional
emotional
old
political
similar
healthy
financial
medical
traditional
federal
entire
strong
actual
significant
successful
electrical
expensive
pregnant
intelligent
interesting
poor
happy
responsible
cute
helpful
recent
willing
nice
wonderful
impossible
serious
huge
rare
technical
typical
competitive
critical
electronic
immediate
aware
educational
environmental
global
legal
relevant
accurate
capable
dangerous
dramatic
efficient
powerful
foreign
hungry
practical
psychological
severe
suitable
numerous
sufficient
unusual
consistent
cultural
existing
famous
pure
afraid
obvious
careful
latter
unhappy
acceptable
aggressive
boring
distinct
eastern
logical
reasonable
strict
administrative
automatic
civil
former
massive
southern
unfair
visible
alive
angry
desperate
exciting
friendly
lucky
realistic
sorry
ugly
unlikely
anxious
comprehensive
curious
impressive
informal
inner
pleasant
sexual
sudden
terrible
unable
weak
wooden
asleep
confident
conscious
decent
embarrassed
guilty
lonely
mad
nervous
odd
remarkable
substantial
suspicious
tall
tiny
more
some
one
all
many
most
other
such
even
new
just
good
any
each
much
own
great
another
same
few
free
right
still
best
public
human
both
local
sure
better
general
specific
enough
long
small
less
high
certain
little
common
next
simple
hard
past
big
possible
particular
real
major
personal
current
left
national
least
natural
physical
short
last
single
individual
main
potential
professional
international
lower
open
according
alternative
special
working
true
whole
clear
dry
easy
cold
commercial
full
low
primary
worth
necessary
positive
present
close
creative
green
late
fit
glad
proper
complex
content
due
effective
middle
regular
fast
independent
original
wide
beautiful
complete
active
negative
safe
visual
wrong
ago
quick
ready
straight
white
direct
excellent
extra
junior
pretty
unique
classic
final
overall
private
separate
western
alone
familiar
official
perfect
bright
broad
comfortable
flat
rich
warm
young
heavy
valuable
correct
leading
slow
clean
fresh
normal
secret
tough
brown
cheap
deep
objective
secure
thin
chemical
cool
extreme
exact
fair
fine
formal
opposite
remote
total
vast
lost
smooth
dark
double
equal
firm
frequent
internal
sensitive
constant
minor
previous
raw
soft
solid
weird
amazing
annual
busy
dead
false
round
sharp
thick
wise
equivalent
initial
narrow
nearby
proud
spiritual
wild
adult
apart
brief
crazy
prior
rough
sad
sick
strange
external
illegal
loud
mobile
nasty
ordinary
royal
senior
super
tight
upper
yellow
dependent
funny
gross
ill
spare
sweet
upstairs
usual
brave
calm
dirty
downtown
grand
honest
loose
male
quiet
brilliant
dear
drunk
empty
female
inevitable
neat
ok
representative
silly
slight
smart
stupid
temporary
weekly
that
this
what
which
time
these
work
no
only
then
first
money
over
business
his
game
think
after
life
day
home
economy
away
either
fat
key
training
top
level
far
fun
house
kind
future
action
live
period
subject
mean
stock
chance
beginning
upset
chicken
head
material
salt
car
appropriate
inside
outside
standard
medium
choice
north
square
born
capital
shot
front
living
plastic
express
feeling
otherwise
plus
savings
animal
budget
minute
character
maximum
novel
plenty
select
background
forward
glass
joint
master
red
vegetable
ideal
kitchen
mother
party
relative
signal
street
connect
minimum
sea
south
status
daughter
hour
trick
afternoon
gold
mission
agent
corner
east
neither
parking
routine
swimming
winter
airline
designer
dress
emergency
evening
extension
holiday
horror
mountain
patient
proof
west
wine
expert
native
opening
silver
waste
plane
leather
purple
specialist
bitter
incident
motor
pretend
prize
resident } ;

my @sorted = map { $_->[0] } 
             sort { $a->[1] <=> $b->[1] } 
             map { [ $_ , length $_ ] } @tedx_feeds ;

say join "\n" , @sorted ;
