requires 'Data::UUID';
requires 'MIME::Base64::URLSafe';
requires 'Test::More', '0.01';

on build => sub {
    requires 'ExtUtils::MakeMaker';
};
