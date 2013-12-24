package Cryostatic::rfile;

use Mojo::Base 'Mojolicious::Controller';

sub rfile {
  my $self = shift;
  my $page_id = shift;
  $self->render(json => {$page_id => 'HII'} );
}

1;
