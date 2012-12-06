package prototyped;
use strict;
use Class::Prototyped;

sub new { 
    my $pkg = shift;
    my %args = @_;
    return Class::Prototyped->new(
        name => $args{name},
        age => $args{age},
        set_name => sub { $_[0]->name($_[1]) },
        set_age => sub { $_[0]->age($_[1]) }
    );
}

1;
