package method_class;
use Method::Signatures::Simple;

use strict;

method new (%args) { bless {%args}, $self }

method name { $self->{name} }
method set_name($val) { $self->{name} = $val }

method set_age($val) { $self->{age} = $val }
method age ($val) { $self->{age} }

1;
