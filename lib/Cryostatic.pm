package Cryostatic;

use Mojo::Base 'Mojolicious';
use Text::MultiMarkdown;
use Text::FrontMatter::YAML;

our $VERSION = '0.01';

has static_ext => sub {
  my $self = shift;
  return ['markdown', 'mkd', 'md'];
};

1;
__END__

=encoding utf-8

=head1 NAME

Cryostatic - datacode ngin.

=head1 SYNOPSIS

  use Cryostatic;

=head1 DESCRIPTION

Cryostatic is a datacode engine.

=head1 AUTHOR

Adam Stokes E<lt>adamjs@cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2013- Adam Stokes

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
