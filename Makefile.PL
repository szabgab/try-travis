use ExtUtils::MakeMaker;

my %conf = (
	NAME         => 'Try::Travis',
	VERSION_FROM => 'lib/Try/Travis.pm',
	PREREQ_PM    => {
		#'IO::Tty' => 1.11,
		#'IO::Pty' => 1.11,

		# standard modules:
		'POSIX'      => 0,
		'Fcntl'      => 0,
		'Carp'       => 0,
		'IO::Handle' => 0,
		'Exporter'   => 0,
		'Errno'      => 0,
	},
	ABSTRACT_FROM => 'lib/Try/Travis.pm',
);

if (eval { ExtUtils::MakeMaker->VERSION(6.3002) }) {
	$conf{LICENSE} = 'perl';
}

if (eval { ExtUtils::MakeMaker->VERSION(6.46) }) {
	$conf{META_MERGE} = {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'http://github.com/szabgab/try-travis.git',
				web  => 'http://github.com/szabgab/try-travis',
			}
		}
	};
}

my %configure_requires = (
        'ExtUtils::MakeMaker' => '6.64',
);
if (eval { ExtUtils::MakeMaker->VERSION(6.52) }) {
	$con{CONFIGURE_REQUIRES} = \%configure_requires;
} else {
	%{ $conf{PREREQ_PM} } = (%{ $conf{PREREQ_PM} }, %configure_requires);
}

my %test_requires = (
	'Test::More'      => '1.00',
	'Test::Exception' => '0.32',
	# standard modules:
	'File::Temp'      => 0,
);
if (eval { ExtUtils::MakeMaker->VERSION(6.64) }) {
	$conf{TEST_REQUIRES} = \%test_requires;
} else {
	%{ $conf{PREREQ_PM} } = (%{ $conf{PREREQ_PM} }, %test_requires);
}


WriteMakefile(%conf);

