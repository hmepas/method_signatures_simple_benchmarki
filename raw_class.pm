package raw_class;
use strict;

sub new {
    my $class = shift;
    bless { @_ }, $class;
}

sub set { $_[0]->{$_[1]} = $_[2] }
sub get { $_[0]->{$_[1]} }

1;
