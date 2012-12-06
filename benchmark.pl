#!/usr/bin/perl -w
use strict;

use Benchmark qw/cmpthese/;

use raw_class;
use raw_class_use_fields;
use method_class;

cmpthese(100000, {
    'raw_class'     => 'new_set_get_check("raw_class")',
    'raw_class_use_fields'     => 'new_set_get_check("raw_class_use_fields")',
    'method_class'  => 'new_set_get_check("method_class")'
});

sub new_set_get_check {
    my $class = shift;
    my $o = $class->new('name' => 'Jill');
    die 'You are not Jill' unless $o->get('name') eq 'Jill';
    $o->set('age', 25);
    die 'wrong age' unless $o->get('age') == 25;
}
