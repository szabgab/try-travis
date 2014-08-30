use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'Try::Travis',
	VERSION_FROM => 'lib/Try/Travis.pm',
	PREREQ_PM    => {
		# standard modules:
		'POSIX'      => 0,
		'Fcntl'      => 0,
		'Carp'       => 0,
		'IO::Handle' => 0,
		'Exporter'   => 0,
		'Errno'      => 0,
	},
	ABSTRACT_FROM => 'lib/Try/Travis.pm',
	($ExtUtils::MakeMaker::VERSION >= 6.3002 ? ('LICENSE'=> 'perl') : ()),
);

