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

sub set_name { $_[0]->{name} = $_[1] }
sub name { $_[0]->{name} }

sub set_age { $_[0]->{age} = $_[1] }
sub age { $_[0]->{age} }

1;
