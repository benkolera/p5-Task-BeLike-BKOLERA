#Please note that you should hand install Module::Install before hand. There
#are a few modules out there that use M::I but don't include it as an inc, so
#they'll be busted if it isn't in your actual perl lib path.

#With this in mind, I am specifically removing my inc/ so that it reminds me next
#time to have it preinstalled. :) 
use inc::Module::Install;

name     'Task-BeLike-BKOLERA';
all_from 'lib/Task/BeLike/BKOLERA.pm';
author   q{Ben Kolera <ben.kolera@gmail.com>};
license  'perl';

#Hacks( To get tests to pass for missing dependencies )
#Fixes Email::MIME ( Req by Email::Stuff ) 2011-10-06
requires 'Email::Date::Format';
#Fixes Catalyst::Devel ( Req by Task::Catalyst ) 2011-10-06
requires 'YAML::Tiny';

#Catalyst / Web Apps
requires 'Catalyst::Controller::HTML::FormFu';
requires 'Catalyst::TraitFor::Model::DBIC::Schema::QueryLog::AdoptPlack';
requires 'Plack::Middleware::Debug';
requires 'Plack::Middleware::Debug::DBIC::QueryLog';
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
requires 'DateTime::Set';

#DB
requires 'DBD::mysql';
requires 'DBD::Pg';
requires 'DBD::SQLite';
requires 'DBIx::Class';
requires 'DBIx::Class::Schema::Loader';

#HTTP / APIs
requires 'LWP';
requires 'SOAP::Lite'; #Requires libexpat to be installed prior.

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
#Will never look installed to module install even if it is installed.
requires 'Term::ReadLine::Gnu'; #Requires libreadline to be installed. 

#Moose 
requires 'Moose';
requires 'Moose::Autobox';
requires 'MooseX::Types::Common';
requires 'MooseX::Types::DateTime';
requires 'MooseX::Types::Email';
requires 'MooseX::Types::LoadableClass';
requires 'MooseX::NonMoose';
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
requires 'Perl::Version';
requires 'Perl::Tidy';
requires 'Pod::Weaver';



auto_install;

WriteAll;

