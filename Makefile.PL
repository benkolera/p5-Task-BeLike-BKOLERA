use inc::Module::Install;

name     'Task-BeLike-BKOLERA';
all_from 'lib/Task/BeLike/BKOLERA.pm';
author   q{Ben Kolera <ben.kolera@gmail.com>};
license  'perl';

#Catalyst
requires 'Catalyst::Controller::HTML::FormFu';
requires 'Task::Catalyst';

#Collection Utils
requires 'Hash::Merge';
requires 'List::AllUtils';
requires 'List::UtilsBy';
requires 'Set::Intersection';

#DateTime
requires 'DateTime';
requires 'DateTime::Format::Natural';
requires 'DateTime::Format::Pg';

#DB
requires 'DBD::mysql';
requires 'DBD::Pg';
requires 'DBD::SQLite';
requires 'DBIx::Class';
requires 'DBIx::Class::Schema::Loader';

#HTTP / APIs
requires 'LWP';
requires 'SOAP::Lite';

#File Stuff
requires 'File::Temp';
requires 'Path::Class';

#Logging
requires 'Log::Log4perl';

#Misc
requires 'Devel::NYTProf';
requires 'Email::Stuff';
requires 'IPC::Run3';
requires 'Regexp::Trie';
requires 'Term::ReadLine::Perl';

#Moose 
requires 'Moose';
requires 'Moose::Autobox';
requires 'Moose::NonMoose';
requires 'MooseX::Types::Common';
requires 'MooseX::Types::DateTime';
requires 'MooseX::Types::Email';
requires 'MooseX::Types::LoadableClass';
requires 'MooseX::Types::Path::Class';
requires 'MooseX::Types::URI';

#Pragmas
requires 'autobox';
requires 'autodie';
requires 'namespace::autoclean';

#Serialisation / Configuration
requires 'Config::JFDI';
requires 'Data::Dumper';
requires 'JSON::Any';
requires 'Text::CSV';
requires 'YAML::Any';

#Syntax Additions
requires 'Method::Signatures';
requires 'MooseX::Declare';
requires 'TryCatch';

#Testing
requires 'DBD::Mock';
requires 'Test::Class';
requires 'Test::Differences';
requires 'Test::Exception';
requires 'Test::File';
requires 'Test::MockObject';
requires 'Test::More';
requires 'Test::Pod::Coverage';

#Tools
requires 'App::Ack';
requires 'App::cpanminus';
requires 'App::Whiff';
requires 'CPAN::Mini';
requires 'CPAN::Mini::Webserver';
requires 'Module::Build';
requires 'Module::Install';
requires 'Perl::Tidy';
requires 'Pod::Weaver';

auto_install;

WriteAll;

