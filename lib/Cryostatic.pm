package Cryostatic;

use Mojo::Base 'Mojolicious';
use Path::Tiny;
use Text::MultiMarkdown;
use Text::FrontMatter::YAML;

our $VERSION = '0.01';

has static_ext => sub {
    my $self = shift;
    return ['markdown', 'mkd', 'md'];
};

sub startup {
    my $self    = shift;
    my $cfgfile = path("~/.cryostatic.conf");
    $self->plugin('Config' => {file => $cfgfile});
    $self->helper(config => $self->config || +{});

    $self->secrets(['who cares', 'i punch hamsters']);

    # Where are the documents
}

1;
__END__

=encoding utf-8

=head1 NAME

Cryostatic - datacode ngin.

=head1 SYNOPSIS

  use Cryostatic;

=head1 DESCRIPTION

Cryostatic is a datacode engine. Producing JSON output of YAML
FrontMatter documents while keeping the feel of static site
generators.

=head1 AUTHOR

Adam Stokes E<lt>adamjs@cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2013- Adam Stokes

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
