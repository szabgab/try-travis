use strict;
use warnings;
use 5.010;

print "STD OUT\n";
print STDERR "STD ERR\n";

my $result = $ENV{TRAVIS_TEST_RESULT} // '';
print "TRAVIS_TEST_RESULT: <$result>\n";
