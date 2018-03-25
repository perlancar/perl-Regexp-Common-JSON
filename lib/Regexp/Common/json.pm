package Regexp::Common::json;

# DATE
# VERSION

use strict;
use warnings;

use Regexp::Common 'pattern';
use Regexp::Pattern::JSON;

my $re = \%Regexp::Pattern::JSON::RE;

for my $patname (sort keys %$re) {
    pattern(
        name => ['json', $patname],
        create => $re->{$patname}{pat},
    );
}

1;
# ABSTRACT: Regexp patterns to match JSON

=head1 SEE ALSO

L<Regexp::Pattern::JSON>
