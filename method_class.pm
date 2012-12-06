package method_class;
use Method::Signatures::Simple;

use strict;

method new (%args) { bless {%args}, $self }
method get ($key) { $self->{$key} }
method set ($key, $val) { $self->{$key} = $val }

1;
