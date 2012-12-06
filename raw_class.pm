package raw_class;
use strict;

sub new {
    my $class = shift;
    bless { @_ }, $class;
}

sub set_name { $_[0]->{name} = $_[1] }
sub name { $_[0]->{name} }

sub set_age { $_[0]->{age} = $_[1] }
sub age { $_[0]->{age} }

1;
