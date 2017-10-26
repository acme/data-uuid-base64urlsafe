# NAME

Data::UUID::Base64URLSafe - URL-safe UUIDs

# SYNOPSIS

    use Data::UUID::Base64URLSafe;
    my $ug = Data::UUID::Base64URLSafe->new;
    my $uuid = $ug->create_b64_urlsafe;

# DESCRIPTION

[Data::UUID](https://metacpan.org/pod/Data::UUID) creates wonderful Globally/Universally Unique
Identifiers (GUIDs/UUIDs). This module is a subclass of that
module which adds a method to get a URL-safe Base64-encoded
version of the UUID using [MIME::Base64::URLSafe](https://metacpan.org/pod/MIME::Base64::URLSafe). What that
means is that you can get a 22-character UUID string which
you can use safely in URLs.

# METHODS

## new

The constructor:

    my $ug = Data::UUID::Base64URLSafe->new;

## create\_b64\_urlsafe

Create a URL-safe Base64-encoded UUID:

    my $uuid = $ug->create_b64_urlsafe;

## create\_from\_name\_b64\_urlsafe

Creates a URL-safe Base64 encoded UUID with the namespace and data 
specified (See the [Data::UUID](https://metacpan.org/pod/Data::UUID) docs on create\_from\_name

## from\_b64\_urlsafe

    my $uuid2 = $ug−>create_from_name_b64_urlsafe(<namespace>, <name>);

## to\_b64\_urlsafe

Convert a binary UUID to a URL-safe Base64 encoded UUID

## from\_b64\_urlsafe

Convert a Base 64-encoded URL-safe UUID to its canonical binary representation

# AUTHOR

Leon Brocard, `<acme@astray.com>`

# COPYRIGHT

Copyright (C) 2008, Leon Brocard

# LICENSE

This module is free software; you can redistribute it or modify it
under the same terms as Perl itself.
