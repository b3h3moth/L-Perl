#!/usr/bin/env perl
use strict;
use warnings;

use lib 'lib';
use Cow;
use Horse;
use Sheep;

Cow::speak;
Horse::speak;
Sheep::speak;

Cow->speak;
Horse->speak;
Sheep->speak;

