package hashclosure;

sub import {
  my $caller = caller;
  *{$caller.'::AUTOLOAD'} = sub {
      my $method = $AUTOLOAD; $method =~ s/.*:://;
      return if $method eq 'DESTROY';
      my $this = shift;
      local *{$caller.'::this'} = $this;
      if(! exists $this->{$method}) {
          my $super = "SUPER::$method";
         return $this->$super(@_);
      }
      $this->{$method}->(@_);
  };
}

1;

