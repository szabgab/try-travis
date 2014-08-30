use strict;
use warnings;

use Test::More tests => 1;

use ExtUtils::MakeMaker;
use Try::Travis;
diag "Try::Travis: $Try::Travis::VERSION";
diag "ExtUtils::MakeMaker: $ExtUtils::MakeMaker::VERSION";
ok 1;
