package raw_class_use_fields;
use strict;
use fields qw/name age/;

sub new {
    my $class = shift;
    my $self = fields::new($class);
    my %params = @_;
    foreach(keys %params) {
        $self->{$_} = $params{$_};
    }
    return $self;
}

sub set { $_[0]->{$_[1]} = $_[2] }
sub get { $_[0]->{$_[1]} }

1;
