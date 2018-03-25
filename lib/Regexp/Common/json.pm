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

=head1 SYNOPSIS

 use Regexp::Common qw/json/;

 say "match" if $str =~ /\A$RE{json}{number}\z/;


=head1 PATTERNS

=head2 number

=head2 string

=head2 array

=head2 object

=head2 value


=head1 SEE ALSO

L<Regexp::Pattern::JSON>
