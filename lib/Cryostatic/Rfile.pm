package Cryostatic::Rfile;

use Mojo::Base 'Mojolicious::Controller';
use Mojo::Log;
use File::Basename;
use File::Spec::Functions 'catfile';
use DDP;

sub index {
    my $self = shift;
    my $page_id = $self->param('filename');
    my $abs_path;
    my $log = Mojo::Log->new;

    my ($name, $path, $suffix) = fileparse($page_id, qr/\.[^.]*/);
    $suffix =~ s/^.//s;
    if (exists($self->app->static_ext->{$suffix})) {
      $abs_path = catfile($self->app->config->{'root_dir'}, $page_id);
      $log->debug('Found markdown file(' .$abs_path. '), proceeding.');
    }
    $self->render(json => {'page_id' => $page_id});
}

1;
