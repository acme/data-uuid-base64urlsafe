#!perl
use strict;
use warnings;
use Test::More tests => 7;
use_ok('Data::UUID::Base64URLSafe');

my $ug = Data::UUID::Base64URLSafe->new;
isa_ok( $ug, 'Data::UUID::Base64URLSafe' );
my $uuid1 = $ug->create_b64_urlsafe;
ok( $uuid1, 'have first UUID' );
is( length($uuid1), 22, 'first UUID has length 22' );
my $uuid2 = $ug->create_b64_urlsafe;
ok( $uuid2, 'have second UUID' );
is( length($uuid2), 22, 'second UUID has length 22' );
isnt( $uuid1, $uuid2, 'UUIDs are different' );
