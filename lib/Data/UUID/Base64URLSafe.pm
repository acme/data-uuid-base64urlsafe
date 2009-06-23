package Data::UUID::Base64URLSafe;
use strict;
use warnings;
use Data::UUID;
use MIME::Base64::URLSafe;
use base qw(Data::UUID);
our $VERSION = '0.33';

sub new {
    my $class = shift;
    my $self  = $class->SUPER::new(@_);
    bless $self, $class;
    return $self;
}

sub create_b64_urlsafe {
    my $self = shift;
    return urlsafe_b64encode( $self->create );
}

1;

__END__

=head1 NAME

Data::UUID::Base64URLSafe - URL-safe UUIDs

=head1 SYNOPSIS

  use Data::UUID::Base64URLSafe;
  my $ug = Data::UUID::Base64URLSafe->new;
  my $uuid = $ug->create_b64_urlsafe;

=head1 DESCRIPTION

L<Data::UUID> creates wonderful Globally/Universally Unique
Identifiers (GUIDs/UUIDs). This module is a subclass of that
module which adds a method to get a URL-safe Base64-encoded
version of the UUID using L<MIME::Base64::URLSafe>. What that
means is that you can get a 22-character UUID string which
you can use safely in URLs.

=head1 METHODS

=head2 new

The constructor:

  my $ug = Data::UUID::Base64URLSafe->new;

=head2 create_b64_urlsafe

Create a URL-safe Base64-encoded UUID:

  my $uuid = $ug->create_b64_urlsafe;

=head1 AUTHOR

Leon Brocard, C<< <acme@astray.com> >>

=head1 COPYRIGHT

Copyright (C) 2008, Leon Brocard

=head1 LICENSE

This module is free software; you can redistribute it or modify it
under the same terms as Perl itself.

