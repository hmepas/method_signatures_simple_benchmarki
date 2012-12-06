#!/usr/bin/perl -w
use strict;

use Benchmark qw/cmpthese/;

use raw_class;
use raw_class_use_fields;
use method_class;
use closured;
use prototyped;

cmpthese(100000, {
    'raw_class'     => 'new_set_get_check("raw_class")',
    'raw_class_use_fields'
                    => 'new_set_get_check("raw_class_use_fields")',
    'method_class'  => 'new_set_get_check("method_class")',
    'closured'      => 'new_set_get_check("closured")',
    'prototyped'      => 'new_set_get_check("prototyped")'
});

sub new_set_get_check {
    my $class = shift;
    my $o = $class->new('name' => 'Jill');
    die 'You are not Jill' unless $o->name eq 'Jill';
    $o->set_age(25);
    die 'wrong age' unless $o->age == 25;
}
