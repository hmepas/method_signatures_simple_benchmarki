#!/usr/bin/perl -w
use strict;
use Test::More;

foreach (qw/raw_class raw_class_use_fields method_class closured prototyped/) {
    print "Testing class $_\n";
    use_ok($_, "use $_");
    test_class($_);
}

done_testing();

sub test_class {
    my $class = shift;
    ok(my $obj = $class->new('name' => 'John'), 'creating object');
    is($obj->name, 'John', 'name is john');
    ok($obj->set_age(35), 'set age to 35');
    is($obj->age, 35, 'age is 35');
}

