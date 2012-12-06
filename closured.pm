package closured;
use strict;

use hashclosure;

sub new {
    my $class = shift;
    my %args = @_;
    my $name = $args{name};
    my $age = $args{age};
    our $this;

    bless {
      name => sub { return $name },
      set_name => sub { return $name = shift },

      age => sub { return $age },
      set_age => sub { return $age = shift },
    }, $class;
}

1;
