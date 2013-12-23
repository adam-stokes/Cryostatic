requires 'perl', '5.008005';

# requires 'Some::Module', 'VERSION';
requires 'Text::MultiMarkdown', '';
requires 'Text::FrontMatter::YAML', '';

on test => sub {
    requires 'Test::More', '0.88';
};
