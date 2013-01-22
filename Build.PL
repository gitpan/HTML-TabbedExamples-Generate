
use strict;
use warnings;

use Module::Build 0.3601;
use lib qw{inc}; use Test::Run::Builder;

my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::Differences" => 0,
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "generate syntax-highlighted examples for\ncodes with a markup compatible with jQueryUI's tab widgets.",
  "dist_author" => [
    "Shlomi Fish <shlomif\@cpan.org>"
  ],
  "dist_name" => "HTML-TabbedExamples-Generate",
  "dist_version" => "0.0.1",
  "license" => "mit",
  "module_name" => "HTML::TabbedExamples::Generate",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "CGI" => 0,
    "Carp" => 0,
    "MooX" => 0,
    "Text::VimColor" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Test::Run::Builder->new(%module_build_args);

$build->create_build_script;
