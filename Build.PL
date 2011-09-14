use 5.006;
use strict;
use warnings;
use Module::Build;

if ($^O ne 'linux') {
	print "No support for OS\n";
	exit 0;
}

my $builder = Module::Build->new(
	module_name => 'Linux::Epoll',
	  'build_requires' => {
    'ExtUtils::CBuilder' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Scalar::Util' => '0',
    'Socket' => '0',
    'Test::More' => '0',
    'Time::HiRes' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'requires' => {
    'IO::Handle' => '0',
    'Sub::Exporter' => '0',
    'parent' => '0',
    'perl' => '5.010',
    'strict' => '0',
    'warnings' => '0'
  },
	
);

$builder->create_build_script();
