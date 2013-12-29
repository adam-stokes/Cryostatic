package Cryostatic::Rfile;

use Mojo::Base 'Mojolicious::Controller';
use File::Basename;
use File::Spec::Functions 'catfile';

sub index {
    my $self = shift;
    my $page_id = $self->param('filename');
    my $abs_path;

    my ($name, $path, $suffix) = fileparse($page_id, qr/\.[^.]*/);
    $suffix =~ s/^.//s;
    if (exists($self->app->static_ext->{$suffix})) {
        $abs_path = catfile($self->app->config->{'root_dir'}, $page_id);
        $self->app->log->debug(
            'Found markdown file(' . $abs_path . '), proceeding.');
    }
    $self->respond_to(
        json => {json => {page_id => $page_id}},
        html => sub {
            $self->render(text => 'sup bitches');
        },
        any => {text => 'nfc', status => 204}
    );

}

1;
