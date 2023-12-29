#!/usr/bin/perl
use strict;
use warnings;

use Test::More;
plan skip_all => 'AUTHOR_TESTING=1 is required' if not $ENV{AUTHOR_TESTING};

eval {
    require Test::Pod;
    import Test::Pod;
};
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok(all_pod_files('.'));
